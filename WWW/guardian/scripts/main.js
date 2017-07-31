var DETAIL_VIDEO_SELECTOR = '[data-video-role="target"]';
var DETAIL_TITLE_SELECTOR = '[data-video-role="title"]';
var VIDEO_LINK_SELECTOR = '[data-video-role="trigger"]';

function setDetails(videoURL, titleText) {
  'use strict';

  var detailVideo = document.querySelector(DETAIL_VIDEO_SELECTOR);
  detailVideo.setAttribute('src', videoURL);

  var detailTitle = document.querySelector(DETAIL_TITLE_SELECTOR);
  detailTitle.textContent = titleText;
}

function urlFromVideo(video) {
  'use strict';

  return video.getAttribute('data-video-url');
}

function titleFromVideo(video) {
  'use strict';

  return video.getAttribute('data-video-title');
}

function setDetailsFrom(video) {
  'use strict';

  setDetails(urlFromVideo(video), titleFromVideo(video));
}

function addVideoClickHandler(video) {
  'use strict';

  video.addEventListener('click', function(event) {
    event.preventDefault();
    setDetailsFrom(video);
  });
}

function getVideosArray() {
  'use strict';

  var videos = document.querySelectorAll(VIDEO_LINK_SELECTOR);
  var videoArray = [].slice.call(videos);

  return videoArray;
}

function initializeEvents() {
  'use strict';
  
  var videos = getVideosArray();
  videos.forEach(addVideoClickHandler);
}

initializeEvents();
