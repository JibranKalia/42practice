// Your last JavaScript (Node) code is saved below:
// Installed npm packages: jquery underscore request express
// jade shelljs passport http sys lodash async mocha chai sinon
// sinon-chai moment connect validator restify ejs ws co when
// helmet wrench brain mustache should backbone forever debug jsdom

// //////////////// //
// PROBLEM 1: Async //
// //////////////// //

// Imagine a scenario in which we are adding an array of videos to a playlist.
// Suppose we have some function "addVideoIdToPlaylist(videoId, playlist)" which
// adds a video ID to our service's playlist.
// However, the service does not process the requests synchronously.
// If we send all the videos at once, the order may not be correct.

// Complete the function addVideoIdsToPlaylist below.
// The function should accept an array of videoIds, add them to a playlist in the correct order,
// and return a Promise. The Promise should be resolved when all videoIds have been successfully
// added.

const addVideoIdToPlaylist = (videoId, playlist) => (new Promise(resolve => (
  setTimeout(
    () => resolve(playlist.push(videoId)),
    (Math.random() * 250)
  )
)));

const addVideoIdsToPlaylist = async (videoIds, playlist) => {
  /* ??? */
  for (const id of videoIds) {
    await addVideoIdToPlaylist(id, playlist);
  }
  return playlist;
};

https://stackoverflow.com/questions/20100245/how-can-i-execute-array-of-promises-in-sequential-order

const playlist = [];
const videoIds = [...new Array(10).keys()];
const control = [...new Array(10).keys()];
// addVideoIdsToPlaylist(videoIds, playlist).then(res => console.log(res));
addVideoIdsToPlaylist(videoIds, playlist).then(() => {
  const isSuccess = control.reduce((success, id, i) => success && id === playlist[i], true);
  console.log(`Success? ${isSuccess}`);
});