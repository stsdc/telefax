using Granite;

namespace Telefax {

	public class Telefax : Granite.Application {

		public static MainWindow main_window { get; private set; }

		construct {
            program_name = "Telefax";
            application_id = "com.github.stsdc.telefax";
            exec_name = "com.github.stsdc.telefax";
			app_launcher = application_id + ".desktop";
			build_version = "0.1.0";
		}

		public Telefax(){
			Granite.Services.Logger.DisplayLevel = Granite.Services.LogLevel.DEBUG;
		}

		protected override void activate () {

        	if (main_window == null) {
				main_window = new MainWindow();        	    
				main_window.set_application (this);
			}

			main_window.present ();
		}

		public static int main ( string[] args ) {
			Gtk.init (ref args);
			var telefax = new Telefax();
			return telefax.run(args);
		}
	}
}
