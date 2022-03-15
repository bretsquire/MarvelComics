# MarvelComics
A project to explore the latest in Swift and iOS development

The goal of this project is to develop an iOS app around the [Marvel Comics API](https://developer.marvel.com/documentation/generalinfo) using the latest Swift/iOS frameworks. 

### UI, Architecture and Libraries:
For the first iteration the app will simply display a scrollable list view of comic titles and their thumbnails from the Marvel catalog. The only interactions for the user are scrolling and pull to refresh. For simplicity, the architecture is a very loose MVC pattern leaning heavily on the SwiftUI and Combine frameworks for publishing the API data to the UI. Swift 5.5 concurrency features (async/await and actors) are used to avoid closures and keep the code readable while ensuring thread safety and UI responsiveness. Codable and Idenifiable protocols are used for parsing the data objects from the API and declaring them as the source of truth for the UI. Finally, AsyncImage is used to simplify the loading of the thumbnails.

### Areas of Improvement:
As a first iteration, the UI was simple enough that there did not seem to be a need to use third party libraries or store any data locally. That said the API like most APIs has a daily rate limit and caching of the data would not only help reduce the number of requests but also improve the responsiveness of the UI. The same goes for caching the thumbnail images. If future iterations allow the user to save some state and persist it beyond the apps' lifecycle then a local database like Core Data will be added. As more features are added the architecture will more likely take on a more formal MVVM pattern.

### Future Iterations:
As far as apps go, scrolling a list of comics is not very exciting. The next iteration can be enhanced to add a comic details page and tabs for the other entity types in the API (Creators, Characters, Events, Stories and Series) as well as a webview to access public websites associated with entity types. Once a UX flow between the entity types is determined then later iterations will include search functionality, bookmarking and maybe trivia.
