import React from 'react';
import {Toast} from 'native-base';
import BookTab from './BookTab';
import TortoiseAndHare from '../../aesopsFable/book.json';

class BookContainer extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            title: TortoiseAndHare.title,
            author: TortoiseAndHare.author,
            year: TortoiseAndHare.year,
            summary: TortoiseAndHare.summary,
            currentPage: 0,
            content: {
                "text1": TortoiseAndHare.title,
                "text2": TortoiseAndHare.author
            }
        }

        this.goToPage = this.goToPage.bind(this);
        this.goToPrevious = this.goToPrevious.bind(this);
        this.goToNext = this.goToNext.bind(this);
    }

    goToPage(pageNumber) {
        //Filter object by page number
        var filteredPages = TortoiseAndHare.pages.filter(function(obj) {
            return obj.number === pageNumber;
        });

        //Toast if check pageObj is empty
        if (filteredPages.length < 1) {
            Toast.show({
                text: "Invalid page",
                type: "warning",
                position: "bottom",
                duration: 1000
            });
        } else {
            this.setState({
                currentPage: pageNumber,
                content: {
                    "text1": filteredPages[0].texts[0].value
                }
            });
        }

    }

    goToPrevious() {
        this.goToPage(this.state.currentPage - 1);
    }

    goToNext() {
        this.goToPage(this.state.currentPage + 1);
    }

    render() {
        return (
            <BookTab
                content={this.state.content} 
                goToPrevious={this.goToPrevious} 
                goToNext={this.goToNext} />
        );
    }
};

export default BookContainer;