using Telefax.Common;
using Td_json;
using Telegram;
namespace Telefax {

    public class MainWindow : BaseMainWindow {
        public Welcome welcome;
        public EnterPhoneNumber enter_phone_number;
        public TDLibParameters params;
        public UpdatesHandler updates_handler;

        public MainWindow(){
            debug("testing");
            this.title =_("Telefax");
            //TODO: Icon name
            this.icon_name = "TODO";
           
            create_layout();

            //  var grid = new Gtk.Grid ();
            //  grid.orientation = Gtk.Orientation.VERTICAL;

            welcome = new Welcome();
            //  enter_phone_number = new EnterPhoneNumber();


            add (welcome);
            //  add (enter_phone_number);
            show_all ();
        }

        private void create_layout () {

            //  params = new TDLibParameters ();

            //  var client = client_create();

            //  var updates_handler = new UpdatesHandler(client);

            //  unowned Thread<void*> thread = Thread.create<void*> (updates_handler.event_loop, true);


        }


        private void login_completed () {
            debug("Dummy login completed");
        }




      
    }
}
