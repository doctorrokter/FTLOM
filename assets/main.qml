/*
 * Copyright (c) 2011-2015 BlackBerry Limited.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import bb.cascades 1.4
import "pages"
import "sheets"

TabbedPane {
    showTabsOnActionBar: true
    
    Menu.definition: MenuDefinition {
        settingsAction: SettingsActionItem {
            onTriggered: {
                settingsSheet.open();
            }
        }
    }
        
    Tab {
        title: qsTr('Feed') + Retranslate.onLocaleOrLanguageChanged
        ActionBar.placement: ActionBarPlacement.OnBar
        Feed {}
    }
    
    Tab {
        title: qsTr('Add Artists') + Retranslate.onLocaleOrLanguageChanged
        ActionBar.placement: ActionBarPlacement.OnBar
        Artists {}
    }
    
    Tab {
        title: qsTr('Your Artists') + Retranslate.onLocaleOrLanguageChanged
        ActionBar.placement: ActionBarPlacement.OnBar
        YourArtists {}
    }
        
    attachedObjects: [
        FBAuth {
            id: fbAuth
            onLoggedIn: {
                _ftlomData.saveData(data);
                fbAuth.close();
            }
        },
        
        Settings {
            id: settingsSheet
        }
    ]
    
    onCreationCompleted: {
        if (!_ftlomData.accessToken) {
            fbAuth.init();
            fbAuth.open();
        }
    }
}
