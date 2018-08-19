using Telefax.Common;

namespace Telefax {

    public class MainWindow : BaseMainWindow {
        public Welcome welcome;

        public MainWindow(){
            debug("testing");
            this.title =_("Telefax");
            //TODO: Icon name
            this.icon_name = "TODO";
           
            create_layout();

            //  var grid = new Gtk.Grid ();
            //  grid.orientation = Gtk.Orientation.VERTICAL;

            welcome = new Welcome();
            add (welcome);
            show_all ();
        }

        private void create_layout () {

            //TODO: Application structure here...

        }

        private void login_completed () {
            debug("Dummy login completed");
        }




      
    }
}
