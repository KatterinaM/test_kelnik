var c = {

    'b': 3,

    'c': function() {

        var obj = this

        window.setTimeout(

            function() {

                obj.d();

            }, 4);

    },

    'd': function() {

        alert(this.b);

    }

};

c.c();
