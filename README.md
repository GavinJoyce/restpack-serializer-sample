## restpack_serializer sample application

[View the demo](http://restpack-serializer-sample.herokuapp.com/)

### getting started

```bundle install```

```rake seed```

```rails server```

### about

Here's some examples of how I plan to use conditional side-loading with [restpack_serializer](https://github.com/RestPack/restpack_serializer). These examples model ```Artists -> Albums -> Songs``` [rails app source](https://github.com/GavinJoyce/restpack-serializer-sample).

Here is a collection of artists:

http://restpack-serializer-sample.herokuapp.com/api/vi/artists.json

And here are just two:

http://restpack-serializer-sample.herokuapp.com/api/vi/artists.json?ids=1,2

Let's side-load their albums:

http://restpack-serializer-sample.herokuapp.com/api/vi/artists.json?ids=1,2&includes=albums

Now we'll side-load albums and songs:

http://restpack-serializer-sample.herokuapp.com/api/vi/artists.json?ids=1,2&includes=albums,songs

Notice that as there may be a large number of songs (there are 31 in this case), we're only returning the first page here. I plan to add links to additional pages in the meta data, the URLs will take the following form:

http://restpack-serializer-sample.herokuapp.com/api/vi/songs.json?artist_ids=1,2&page=2

or if we want to include side-loads:

http://restpack-serializer-sample.herokuapp.com/api/vi/songs.json?artist_ids=1,2&page=2&includes=artists,albums

I plan to implement some of the json-api draft in the coming days so expect the JSON output to become more familiar soon.
