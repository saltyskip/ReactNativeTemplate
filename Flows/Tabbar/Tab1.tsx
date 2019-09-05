import React from 'react';
import {SafeAreaView, StyleSheet, Text, Button} from 'react-native';
import {TabbarCoordinator} from './TabbarCoordinator';

export default class Tab1 extends React.Component {
  render() {
    console.log(TabbarCoordinator);
    return (
      <SafeAreaView>
        <Text>Tab1</Text>
        <Button
          title="Click for Flow 1"
          onPress={() => TabbarCoordinator.navigateTo('flow1')}></Button>
      </SafeAreaView>
    );
  }
}

const styles = StyleSheet.create({});
