import React from 'react';
import {Container, Content, Footer, Text, Button, Left, Right} from 'native-base';

const BookTab = ({content, goToPrevious, goToNext}) => (
    <Container>
      <Content>
        <Text>{content.text1}</Text>
        <Text>{content.text2}</Text>
      </Content>
      <Footer>
        <Left>
          <Button onPress={goToPrevious}><Text>&lt;</Text></Button>
        </Left>
        <Right>
          <Button onPress={goToNext}><Text>&gt;</Text></Button>
        </Right>
      </Footer>
    </Container>
  );
  
  export default BookTab;