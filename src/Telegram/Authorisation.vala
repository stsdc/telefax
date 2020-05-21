using Td_json;

public class Telegram.Authorisation : Object {

    Telegram.TDLibParameters parameters;
    public void * client;

    public Authorisation (void * _client) {
        parameters = new Telegram.TDLibParameters();
        client = _client;
    }

    public void set_parameters () {
        client_send (client, Telegram.TDAPI.set_td_lib_parameters(this.parameters));
    }

    public void check_database_encryption_key () {
        // https://github.com/tdlib/td/issues/188#issuecomment-379536139
        client_send (client, Telegram.TDAPI.check_database_encryption_key());
    }

    public void set_phone_number () {
        client_send (client, Telegram.TDAPI.set_phone_number());
    }

    public void check_authentication_code () {
        client_send (client, Telegram.TDAPI.check_authentication_code("00000"));
    }
}
