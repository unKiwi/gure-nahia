'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "dc9a3e599e10cde342ada4e646d0275b",
"index.html": "d46748d92035483f5a67e9764cc47b63",
"/": "d46748d92035483f5a67e9764cc47b63",
"main.dart.js": "11277219f4d72cb05f79ff09e57fe7aa",
"flutter.js": "a85fcf6324d3c4d3ae3be1ae4931e9c5",
"favicon.png": "7886802c710603a089a98c42088e9fd2",
"icons/Icon-192.png": "c0c09ab77f69db39eff68404c197394d",
"icons/Icon-maskable-192.png": "c0c09ab77f69db39eff68404c197394d",
"icons/Icon-maskable-512.png": "7c0a5626abeb01b963b3b3275043b437",
"icons/Icon-512.png": "7c0a5626abeb01b963b3b3275043b437",
"manifest.json": "c83c960c83a78ba3ff654878af35a704",
"assets/AssetManifest.json": "99d6aad3dfbe984db27ba5b6e832e4b9",
"assets/NOTICES": "c114eccdd1fb83f5c4e41074ab14e81c",
"assets/FontManifest.json": "7b9814099402a54305bf83e602b61c88",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/fonts/Poppins/Poppins-Light.ttf": "fcc40ae9a542d001971e53eaed948410",
"assets/fonts/Poppins/Poppins-Medium.ttf": "bf59c687bc6d3a70204d3944082c5cc0",
"assets/fonts/Poppins/Poppins-Regular.ttf": "093ee89be9ede30383f39a899c485a82",
"assets/fonts/Poppins/Poppins-Bold.ttf": "08c20a487911694291bd8c5de41315ad",
"assets/fonts/Poppins/Poppins-Semibold.ttf": "6f1520d107205975713ba09df778f93f",
"assets/assets/logo_ESAT.png": "f52a9546d9cd8d209ced9f140823d375",
"assets/assets/images/atelier/image/pilecarton.JPG": "385d0b076372351601182d84b3bc0799",
"assets/assets/images/atelier/image/maraichage.jpg": "110a0c5a24f43abfcec8f0c7ba6187c3",
"assets/assets/images/atelier/image/machinelaver.JPG": "56973ab0af14bf584a12b50accba7443",
"assets/assets/images/atelier/image/entretien.jpg": "96828202a939a39bcea81c4ffe323c3e",
"assets/assets/images/atelier/image/cuisine2.JPG": "a9a8fce634c265156814f3f313e3f7b0",
"assets/assets/images/atelier/image/camion2.jpg": "a3a02c83bbb6e64003ddfe5d0f92097e",
"assets/assets/images/atelier/vignette/Soutien%2520psychologique.png": "92d940e54c395fba5d0bf775085c49db",
"assets/assets/images/atelier/vignette/Soutien%2520pedagogique.png": "853139e0ad0f6f1a9ff975b1a7461970",
"assets/assets/images/atelier/vignette/Lingerie.png": "799c204516281a20d859309d6b36ae01",
"assets/assets/images/atelier/vignette/Insertion%2520professionnel.png": "d3a57b391a451770009d64665ca3bbac",
"assets/assets/images/atelier/vignette/Espaces%2520Vert.png": "bfd4fafb7a22c93b6d7eabedaa3e88d4",
"assets/assets/images/atelier/vignette/Horticulture1.png": "961c6ba4cc86c57baf5949cc11184d36",
"assets/assets/images/atelier/vignette/Entretien%2520des%2520locaux.png": "bd0311e6569eddec6dc30e3e487cb92c",
"assets/assets/images/atelier/vignette/Restauration.png": "3843ffa604bbc9437381c3c558289eff",
"assets/assets/images/atelier/vignette/Soutien%2520medical.png": "a11572819a8690008f58e836dcfd2d66",
"assets/assets/images/atelier/vignette/Soutien%2520professionnel.png": "26b574eae28b8f081b97f2748e1e9a58",
"assets/assets/images/atelier/vignette/Epanouissement%2520personnel.png": "9a3235830df256d3a7d96cec17d30592",
"assets/assets/images/atelier/vignette/Sous%2520traitance.png": "e63b8cfa58d4cbf2fb186d829a8f5e87",
"assets/assets/images/atelier/vignette/Soutien%2520social.png": "c9ef9f23f9b1ccdd60f2f425e0e5eab0",
"assets/assets/images/drawer/soutien.png": "fcb450dac6460797acf06914ea841404",
"assets/assets/images/drawer/atelier.png": "fe5abbf5a798c3cb2513816447cecac8",
"assets/assets/images/galerie/cuisine.JPG": "eb669eda999c7399ebbf1405b09ef0a9",
"assets/assets/images/galerie/pilecarton.JPG": "385d0b076372351601182d84b3bc0799",
"assets/assets/images/galerie/machine.JPG": "137d5d24104a3f980aa4b8d966e4124d",
"assets/assets/images/galerie/serre2.JPG": "2ea191fe0d1953697af1f07bd808a84f",
"assets/assets/images/galerie/ateliercarton.JPG": "9f3a4d712a0b36a221375db58f55ef7a",
"assets/assets/images/galerie/atelierpate2.JPG": "04b8dbe2ff4bc0cac603ed9a71f7eab4",
"assets/assets/images/galerie/etiquette.JPG": "359f4f46f70c89c72c468f48619feac9",
"assets/assets/images/galerie/pommier.JPG": "d7313ae0f7ebd25088dd6abdcc4261f0",
"assets/assets/images/galerie/magasin2.JPG": "9dd7c4b85c529be172e9dfc73a9f3427",
"assets/assets/images/galerie/atelierempilage.jpg": "dda981b6655805016c829b5ddca1b6b5",
"assets/assets/images/galerie/atelieretiquette4.JPG": "ce3baf31d433a46f560e6aec534b106d",
"assets/assets/images/galerie/machinelaver.JPG": "56973ab0af14bf584a12b50accba7443",
"assets/assets/images/galerie/lingeriequipe.png": "cd345b35706052259cbe9a51b2a32a7a",
"assets/assets/images/galerie/toursanneau2.JPG": "8a3eacbf77e85cba04973b309a89c443",
"assets/assets/images/galerie/magasinpanneau.JPG": "4ddef59b17cd13fafa190a6b4352e34b",
"assets/assets/images/galerie/atelieraneau2.png": "ef5965b82132a25bd4414eea5fc1fed3",
"assets/assets/images/galerie/cartonteeshirt.JPG": "9764dc00d9e8f62f111e932749db5af0",
"assets/assets/images/galerie/atelierpate%25CC%25813.JPG": "ab4f0a50c9bd5f2b3d7ef10fb0b34554",
"assets/assets/images/galerie/atelieretiquette2.JPG": "d1d28d6e5f786ad3462aaf9f279dcfb5",
"assets/assets/images/galerie/camion.jpg": "c7faee5b7036834a01ba2ce494eecb80",
"assets/assets/images/galerie/atelieretiquette3.JPG": "29a5073760a8b790e7d46d81b6cc5344",
"assets/assets/images/galerie/batiment.JPG": "571c018f818439057aa22f2d8b7cb2a7",
"assets/assets/images/galerie/atelieranneau.JPG": "2195ea0770a11fbe55c347783e850be5",
"assets/assets/images/galerie/pommier2.JPG": "b75f411d5c78c6e2cde6861e758125aa",
"assets/assets/images/galerie/atelierteeshirt6.png": "b918a3e3c9fc00eda69eae7b98fc7eb7",
"assets/assets/images/galerie/atelierteeshirt4.png": "1cafeb54c6c3c3f03e68f891dc71d5d0",
"assets/assets/images/galerie/plante.JPG": "6856f303759a2bcc4c93822118427915",
"assets/assets/images/galerie/_MG_1728.JPG": "b8f39cda9d36f595ff5c9124114e9669",
"assets/assets/images/galerie/atelierteeshirt5.JPG": "c7267534da557d0dff28f7801373f606",
"assets/assets/images/galerie/atelier%2520etiquette.jpg": "9e2827a2c53c45fef032eb76b2edfd8d",
"assets/assets/images/galerie/atelierpate%25CC%2581.JPG": "b1c5e2a8ff4e53189bc31a3dc637ff87",
"assets/assets/images/galerie/atelierteeshirt2.jpg": "1015dfe4f40661028da4195ec3faf3e0",
"assets/assets/images/galerie/toursanneaux.JPG": "d66494328459c582820f19f724c77e8c",
"assets/assets/images/galerie/atelierteeshirt3.png": "318905c197323c11eaa78f93c3327da3",
"assets/assets/images/galerie/ateliercollage.JPG": "6a241dbaa37ee3d823dc31a18d1ad35e",
"assets/assets/images/galerie/magasin.jpg": "401a7fca46ceef7d58bd9c9e6c4ec582",
"assets/assets/images/galerie/pileetiquette.JPG": "d79de323fcb9b510aa74734676059b9f",
"assets/assets/images/galerie/camion4.jpg": "3c86bcceda5e20c76355f8b8695fb6a3",
"assets/assets/images/galerie/camion5.JPG": "22670ae6bfb7e7295bc7463f74cabf51",
"assets/assets/images/galerie/tablerepasssee.JPG": "3adcefca4620d1e33bf16bca5a6ee82e",
"assets/assets/images/galerie/atelierteeshirtgroupe.jpg": "9f098e165e74efc29b5338e55abe35d5",
"assets/assets/images/galerie/serre.jpg": "4fbed0af2ff5514baf981afb7651d529",
"assets/assets/images/galerie/cuisine2.JPG": "a9a8fce634c265156814f3f313e3f7b0",
"assets/assets/images/galerie/camion2.jpg": "a3a02c83bbb6e64003ddfe5d0f92097e",
"assets/assets/images/galerie/camion3.jpg": "b3479681035184bfdb6da2cf7b38c2c7",
"assets/assets/images/galerie/panneauatelier.JPG": "80b440b40bc03378413d46715f81a7a9",
"assets/assets/images/carousel/fleure.jpeg": "7b46a9f84771e21f65a482cb6c99c98a",
"assets/assets/images/carousel/interieur.jpeg": "11492523200978f78e05e76c14037ce1",
"assets/assets/images/carousel/serre.jpeg": "3905e59527be7bed9c97967d5e514673",
"assets/assets/images/carousel/facade.jpeg": "40e988807f2f4a72b11cf562fa5d14cf",
"assets/assets/images/carousel/global_view.jpeg": "2d6b7137711908a2d1c4f5c24c62d2a7",
"assets/assets/images/apajh-esat-gure-nahia.png": "7fe0258f8450caa98f58887bbdcff6aa",
"assets/assets/videos/Montage_atelier.mp4": "a89fbe72903dccb42e940ed6f778119f",
"assets/assets/videos/ESAT_animation.mp4": "19f34f97abe4d88a5e1f35b5575f64e7",
"canvaskit/canvaskit.js": "97937cb4c2c2073c968525a3e08c86a3",
"canvaskit/profiling/canvaskit.js": "c21852696bc1cc82e8894d851c01921a",
"canvaskit/profiling/canvaskit.wasm": "371bc4e204443b0d5e774d64a046eb99",
"canvaskit/canvaskit.wasm": "3de12d898ec208a5f31362cc00f09b9e"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
