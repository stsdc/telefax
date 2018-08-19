namespace Telefax {
    public class Welcome : Gtk.Grid {
        construct {
            var welcome = new Granite.Widgets.Welcome ("Welcome to Telefax", "A Telegram client.");
            welcome.append ("start-here-symbolic", "Log In", "To start messeging.");

            add (welcome);

            welcome.activated.connect ((index) => {
                switch (index) {
                    case 0:
                        try {
                            debug ("Log In action");
                        } catch (Error e) {
                            warning (e.message);
                        }

                        break;
                }
            });
        }
    }
}