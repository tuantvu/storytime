/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React from 'react';
import { View, Text, Button } from 'react-native';
import {Root} from 'native-base';
import { StackNavigator } from 'react-navigation';
import BookShelfScreen from './app/screens/BookShelfScreen';
import BookTab from './app/screens/Book/BookTab';
import BookContainer from './app/screens/Book/BookContainer';

const HomeScreen = ({ navigation }) => (
  <View style={{ flex: 1, alignItems: 'center', justifyContent: 'center' }}>
    <Text>Story Time</Text>
    <Button
      onPress={() => navigation.navigate('BookShelf')}
      title="Go to Book Shelf"
    />
  </View>
);

const RootNavigator = StackNavigator({
  Home: {
    screen: HomeScreen,
    navigationOptions: {
      header: null
    },
  },
  BookShelf: {
    screen: BookShelfScreen,
    navigationOptions: {
      headerTitle: 'Book Shelf',
    },
  },
  BookTab: {
    screen: BookContainer,
    navigationOptions: {
      header: null
    },
  }
});

export default () =>
  <Root>
    <RootNavigator />
  </Root>;