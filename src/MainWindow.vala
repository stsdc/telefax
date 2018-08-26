using Telefax.Common;
using TD;
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

            var client = new JSONClient ();
            string s = "{\"@type\": \"getAuthorizationState\"}";
            client.send (s);
            var  res = client.receive (1.0);

            info ("received: %s", res);
        }

        private void login_completed () {
            debug("Dummy login completed");
        }




      
    }
}
