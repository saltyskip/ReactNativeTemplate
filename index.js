/**
 * @format
 */

import {AppRegistry} from 'react-native';
import Tab1 from './Flows/Tabbar/Tab1';
import Tab2 from './Flows/Tabbar/Tab2';
import Tab3 from './Flows/Tabbar/Tab3';
import Flow1Screen from './Flows/Flow1/Screens/Flow1Screen';
import Flow2Screen from './Flows/Flow2/Screens/Flow2Screen';

import App from './App';
import {name as appName} from './app.json';

//AppRegistry.registerComponent('derp', () => App);
AppRegistry.registerComponent('Tab1', () => Tab1);
AppRegistry.registerComponent('Tab2', () => Tab2);
AppRegistry.registerComponent('Tab3', () => Tab3);
AppRegistry.registerComponent('Flow1Screen', () => Flow1Screen);
AppRegistry.registerComponent('Flow2Screen', () => Flow2Screen);
