[CCode (lower_case_cprefix = "td_")]

namespace TD {

    [CCode (cname = "void", free_function = "td_json_client_destroy", cprefix = "td_json_client", has_type_id = false)]
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
         * @param timeout Maximum number of seconds allowed for this function to wait for new data.
         * @return JSON-serialized null-terminated incoming update or request response. May be NULL if the timeout expires.
         */

        [CCode (cname = "td_json_client_receive")]
        public string receive (double timeout);


        /**
         * Synchronously executes TDLib request. May be called from any thread.
         * Only a few requests can be executed synchronously.
         * Returned pointer will be deallocated by TDLib during next call to td_json_client_receive or td_json_client_execute
         * in the same thread, so it can't be used after that.
         * @param request JSON-serialized null-terminated request to TDLib.
         * @return JSON-serialized null-terminated request response. May be NULL if the request can't be parsed.
         */
        public string execute {
			[CCode (cname = "td_json_client_execute")]
            get;
            [CCode (cname = "td_json_client_execute")]
			set;
        }
    }
    
}