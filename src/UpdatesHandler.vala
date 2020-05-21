using Td_json;
using Telegram;

namespace Telefax {

    public class UpdatesHandler : GLib.Object {

        public void * client;
        public Telegram.Authorisation auth;

        public UpdatesHandler (void * _client) {
            client = _client;
            auth = new Telegram.Authorisation(client);
        }

        public void* event_loop () {
            while (true) {
                string res = client_receive(client, 1.0);
                info(res);

                Json.Parser parser = new Json.Parser ();
                
                if (res != null) {
                    parser.load_from_data (res);
                    Json.Node node = parser.get_root ();
                    this.result_handler (node);
                }
            }
        }

        public void result_handler (Json.Node node) {
            if (node.get_node_type () != Json.NodeType.OBJECT) {
                error ("Unexpected element type %s", node.type_name ());
            }

            unowned Json.Object obj = node.get_object ();
            var event_type = obj.get_string_member ("@type");
            switch (event_type) {
                case "updateAuthorizationState":
                    this.on_update_authorisation_state(obj);
                    break;
                default:
                    debug (event_type);
                break;
            }
        }

        public void on_update_authorisation_state (Json.Object obj) {
            // getting to "authorization_state" object
            Json.Node authorization_state_node = obj.get_member ("authorization_state");
            Json.Object authorization_state_object = authorization_state_node.get_object ();

            var authorization_state_type = authorization_state_object.get_string_member("@type");
            
            info(authorization_state_type);

            switch (authorization_state_type) {
                case "authorizationStateWaitTdlibParameters":
                    this.auth.set_parameters();
                    break;

                case "authorizationStateWaitEncryptionKey":
                    this.auth.check_database_encryption_key();
                    break;

                case "authorizationStateWaitPhoneNumber":
                    this.auth.set_phone_number();
                    break;
                
                case "authorizationStateWaitCode":
                    this.auth.check_authentication_code();
                    break;
            default:
                break;
            }

            
        }

        
            
    }

}