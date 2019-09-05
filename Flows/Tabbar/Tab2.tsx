import React from 'react';
import {SafeAreaView, StyleSheet, Text, Button} from 'react-native';
import {TabbarCoordinator} from './TabbarCoordinator';

export default class Tab2 extends React.Component {
  render() {
    return (
      <SafeAreaView>
        <Text>Tab2</Text>
        <Button
          title="Click for Flow 2"
          onPress={() => TabbarCoordinator.navigateTo('flow2')}></Button>
      </SafeAreaView>
    );
  }
}

const styles = StyleSheet.create({});
