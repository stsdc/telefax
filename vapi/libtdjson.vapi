[CCode (cheader_filename = "td/td/telegram/td_json_client.h", lower_case_cprefix = "td_")]

namespace Telegram {

    [CCode (cname = "td_json_client", cprefix = "td_json_client")]
    [Compact]
    public class JSONClient { 
        /**
         * Creates a new instance of TDLib.
         */
        [CCode (cname = "td_json_client_create")]
        public JSONClient ();

        /**
         * Sends request to the TDLib client. May be called from any thread.
         * @param request JSON-serialized null-terminated request to TDLib.
         */
        [CCode (cname = "td_json_client_send")]
        public void send (string request);

        /**
         * Receives incoming updates and request responses from the TDLib client. May be called from any thread, but
         * shouldn't be called simultaneously from two different threads.
         * Returned pointer will be deallocated by TDLib during next call to td_json_client_receive or td_json_client_execute
         * in the same thread, so it can't be used after that.
         * @param client The client.
         * @param timeout Maximum number of seconds allowed for this function to wait for new data.
         * @return JSON-serialized null-terminated incoming update or request response. May be NULL if the timeout expires.
         */
        public string receive {
			[CCode (cname = "td_json_client_receive")]
            get;
            [CCode (cname = "td_json_client_receive")]
			set;
        }

        /**
         * Synchronously executes TDLib request. May be called from any thread.
         * Only a few requests can be executed synchronously.
         * Returned pointer will be deallocated by TDLib during next call to td_json_client_receive or td_json_client_execute
         * in the same thread, so it can't be used after that.
         * @param client The client.
         * @param request JSON-serialized null-terminated request to TDLib.
         * @return JSON-serialized null-terminated request response. May be NULL if the request can't be parsed.
         */
        public string execute {
			[CCode (cname = "td_json_client_execute")]
            get;
            [CCode (cname = "td_json_client_execute")]
			set;
        }

        /**
         * Destroys the TDLib client instance. After this is called the client instance shouldn't be used anymore.
         */
        [CCode (cname = "td_json_client_destroy")]
        public void destroy ();

    }
    
}