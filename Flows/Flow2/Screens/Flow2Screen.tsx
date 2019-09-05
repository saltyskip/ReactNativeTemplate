import React from 'react';
import {
  SafeAreaView,
  StyleSheet,
  ScrollView,
  View,
  Text,
  Image,
} from 'react-native';

export default class Flow2Screen extends React.Component {
  render() {
    return (
      <SafeAreaView>
        <Image
          style={{width: 50, height: 50}}
          source={{
            uri: 'https://facebook.github.io/react-native/img/tiny_logo.png',
          }}
        />
      </SafeAreaView>
    );
  }
}

const styles = StyleSheet.create({});
