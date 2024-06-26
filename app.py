import sys
import os

sys.stdout = sys.stderr
from privacyidea.app import create_app

PRIVACYIDEA_CONFIGFILE=os.getenv('PRIVACYIDEA_CONFIGFILE') or "/app/pi.cfg"
print(f'PrivacyIDEA config path: {PRIVACYIDEA_CONFIGFILE}')

# Now we can select the config file:
application = create_app(config_name="production",
				config_file=PRIVACYIDEA_CONFIGFILE)

