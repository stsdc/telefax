    public class Telefax.EnterPhoneNumber : Gtk.Box {

        public signal void phone_number_entered ();

        private Gtk.Label title_label;
        private Gtk.Label subtitle_label;

        construct {
            get_style_context ().add_class (Gtk.STYLE_CLASS_VIEW);
            get_style_context ().add_class (Granite.STYLE_CLASS_WELCOME);

            var title_label  = new Gtk.Label ("Phone Number");
            title_label.justify = Gtk.Justification.CENTER;
            title_label.hexpand = true;
            title_label.get_style_context ().add_class (Granite.STYLE_CLASS_H1_LABEL);

            subtitle_label = new Gtk.Label ("Enter your mobile phone number.");
            subtitle_label.justify = Gtk.Justification.CENTER;
            subtitle_label.hexpand = true;
            subtitle_label.wrap = true;
            subtitle_label.wrap_mode = Pango.WrapMode.WORD;

            var subtitle_label_context = subtitle_label.get_style_context ();
            subtitle_label_context.add_class (Gtk.STYLE_CLASS_DIM_LABEL);
            subtitle_label_context.add_class (Granite.STYLE_CLASS_H2_LABEL);

            var options = new Gtk.Grid ();
            options.orientation = Gtk.Orientation.VERTICAL;
            options.row_spacing = 12;
            options.halign = Gtk.Align.CENTER;
            options.margin_top = 24;
            
            var phone_number_input = new Gtk.Entry();
            options.add(phone_number_input);
            phone_number_input.changed.connect ((index) => {
                info("YAY");
            });

            phone_number_input.activate.connect((index) => {
                info("YOLO");
                this.phone_number_entered ();
            });

            var content = new Gtk.Grid ();
            content.expand = true;
            content.margin = 12;
            content.orientation = Gtk.Orientation.VERTICAL;
            content.valign = Gtk.Align.CENTER;
            content.add (title_label);
            content.add (subtitle_label);
            content.add (options);

            add (content);


        }
    }
