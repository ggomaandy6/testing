var data = [{ author: "Pete Hunt", text: "This is one comment" }, { author: "Jordan Walke", text: "This is *another* comment" }, { author: "Jay Jin", text: "hello" }];

var Comment = React.createClass({
    rawMarkup: function () {
        var rawMarkup = marked(this.props.children.toString(), { sanitize: true });
        return { __html: rawMarkup };
    },

    render: function () {
        return React.createElement(
            "div",
            { className: "comment" },
            React.createElement(
                "h2",
                { className: "commentAuthor" },
                this.props.author
            ),
            React.createElement("span", { dangerouslySetInnerHTML: this.rawMarkup() })
        );
    }
});

var CommentList = React.createClass({
    render: function () {
        var commentNodes = this.props.data.map(function (comment) {
            return React.createElement(
                Comment,
                { author: comment.author },
                comment.text
            );
        });
        return React.createElement(
            "div",
            { className: "commentList" },
            commentNodes
        );
    }
});

var CommentForm = React.createClass({
    handleSubmit: function (e) {
        e.preventDefault();
        var author = this.refs.author.value.trim();
        var text = this.refs.text.value.trim();

        if (!text || !author) {
            return;
        }
        this.props.onCommentSubmit({ author: author, text: text });
        this.refs.author.value = '';
        this.refs.text.value = '';
        return;
    },
    render: function () {
        return React.createElement(
            "form",
            { className: "commentForm", onSubmit: this.handleSubmit },
            React.createElement("input", { type: "text", placeholder: "Your name", ref: "author" }),
            React.createElement("input", { type: "text", placeholder: "Say something...", ref: "text" }),
            React.createElement("input", { type: "submit", value: "Post" })
        );
    }
});

var CommentBox = React.createClass({
    loadCommentsFromServer: function () {
        $.ajax({
            url: this.props.url,
            dataType: 'json',
            cache: false,
            success: (function (data) {
                this.setState({ data: data });
            }).bind(this),
            error: (function (xhr, status, err) {
                console.error(this.props.url, status, err.toString());
            }).bind(this)
        });
    },
    handleCommentSubmit: function (comment) {
        var comments = this.state.data;
        var newComments = comments.concat([comment]);
        this.setState({ data: newComments });

        $.ajax({
            url: this.props.url,
            dataType: 'json',
            type: 'POST',
            data: comment,
            success: (function (data) {
                this.setState({ data: data });
            }).bind(this),
            error: (function (xhr, status, err) {
                console.error(this.props.url, status, err.toString());
            }).bind(this)
        });
    },
    getInitialState: function () {
        return { data: [{ author: "Pete Hunt", text: "This is one comment" }, { author: "Jordan Walke", text: "This is *another* comment" }, { author: "Jay Jin", text: "hello" }] };
    },
    componentDidMount: function () {
        this.loadCommentsFromServer();
        setInterval(this.loadCommentsFromServer, this.props.pollInterval);
    },
    render: function () {
        return React.createElement(
            "div",
            { className: "commentBox" },
            React.createElement(
                "h1",
                null,
                "Comments"
            ),
            React.createElement(CommentList, { data: this.state.data }),
            React.createElement(CommentForm, { onCommentSubmit: this.handleCommentSubmit })
        );
    }
});

ReactDOM.render(React.createElement(CommentBox, { url: "/api/comments", pollInterval: 2000000 }), document.getElementById('content'));