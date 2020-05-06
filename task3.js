var c = {

    'b': 3,

    'c': function() {

        window.setTimeout(

            function() {

                this.d();

            }.bind(this), 4);

    },

    'd': function() {

        alert(this.b);

    }

};

c.c();
