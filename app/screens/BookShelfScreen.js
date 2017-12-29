/**
 * @flow
 */

import React from 'react';
import { Container, Content, List, ListItem, Text, Button } from 'native-base';

const BookShelfScreen = ({navigation}) => (
  <Container>
    <Content>
      <List>
        <ListItem button onPress={() => navigation.navigate('BookTab')}>
          <Text>The Tortoise and the Hare</Text>
        </ListItem>
      </List>
    </Content>
  </Container>
);

export default BookShelfScreen;