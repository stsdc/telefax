using Granite;

namespace Telefax {

	public class Telefax : Granite.Application {

		public static MainWindow main_window { get; private set; }

		construct {
            program_name = "Monitor";
            application_id = "com.github.stsdc.telefax";
            exec_name = "com.github.stsdc.telefax";
            app_launcher = application_id + ".desktop";
		}

		public Telefax(){
			if (DEBUG)
                Granite.Services.Logger.DisplayLevel = Granite.Services.LogLevel.DEBUG;
           	else
                Granite.Services.Logger.DisplayLevel = Granite.Services.LogLevel.INFO;
		}

		protected override void activate () {

        	if (main_window == null) {
				main_window = new MainWindow();        	    
				main_window.set_application (this);
			}

			main_window.present ();
		}
	}
}
