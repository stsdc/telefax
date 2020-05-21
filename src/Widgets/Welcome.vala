    public class Telefax.Welcome : Gtk.Box {
        private Granite.Widgets.Welcome welcome;
        private Gtk.Stack welcome_stack;

        private EnterPhoneNumber enter_phone_number;
        private EnterConfirmationCode enter_confirmation_code;
        
        public Welcome () {
            orientation = Gtk.Orientation.HORIZONTAL;

            width_request = 500;
            height_request = 500;

            welcome = new Granite.Widgets.Welcome ("Welcome to Telefax", "A Telegram client.");
            welcome.hexpand = true;
            welcome.append ("start-here-symbolic", "Log In", "Start messeging.");

            enter_phone_number = new EnterPhoneNumber();
            enter_confirmation_code = new EnterConfirmationCode();

            welcome_stack = new Gtk.Stack ();
            welcome_stack.add_named (welcome, "welcome");
            welcome_stack.add_named (enter_phone_number, "enter-phone-number");
            welcome_stack.add_named (enter_confirmation_code, "enter-confiramtion-code");
            welcome_stack.set_visible_child (welcome);

            enter_phone_number.phone_number_entered.connect (() => {
                welcome_stack.set_visible_child_full ("enter-confiramtion-code", Gtk.StackTransitionType.SLIDE_LEFT);
            });

            add (welcome_stack);

            welcome.activated.connect ((index) => {
                switch (index) {
                    case 0:
                        info("log in");
                        welcome_stack.set_visible_child_full ("enter-phone-number", Gtk.StackTransitionType.SLIDE_LEFT);
                        break;
                }
            });
        }
    }
