## restpack_serializer sample application

**This is a sample application which demonstrates the [restpack_serializer](https://github.com/RestPack/restpack_serializer) gem**

[View the demo](http://restpack-serializer-sample.herokuapp.com/)

### getting started

```bundle install```

```rake db:seed```

```rails server```

### about

Here's some examples of how I plan to use conditional side-loading with [restpack_serializer](https://github.com/RestPack/restpack_serializer). These examples model ```Artists -> Albums -> Songs``` [rails app source](https://github.com/GavinJoyce/restpack-serializer-sample).

Here is a collection of artists:

http://restpack-serializer-sample.herokuapp.com/api/v1/artists.json

And here are just two:

http://restpack-serializer-sample.herokuapp.com/api/v1/artists.json?ids=1,2

Let's side-load their albums:

http://restpack-serializer-sample.herokuapp.com/api/v1/artists.json?ids=1,2&include=albums

Now we'll side-load albums and songs:

http://restpack-serializer-sample.herokuapp.com/api/v1/artists.json?ids=1,2&include=albums,songs

Notice that as there may be a large number of songs (there are 31 in this case), we're only returning the first page here. I plan to add links to additional pages in the meta data, the URLs will take the following form:

http://restpack-serializer-sample.herokuapp.com/api/v1/songs.json?artist_ids=1,2&page=2

or if we want to include side-loads:

http://restpack-serializer-sample.herokuapp.com/api/v1/songs.json?artist_ids=1,2&page=2&include=artists,albums

