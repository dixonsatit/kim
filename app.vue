<template>
  <div class="q-pa-md q-gutter-sm">
    <q-bar>
      <q-btn dense flat :icon="fabApple" />
      <div class="text-weight-bold">App</div>
      <div class="cursor-pointer gt-md">File</div>
      <div class="cursor-pointer gt-md">Edit</div>
      <div class="cursor-pointer gt-md">View</div>
      <div class="cursor-pointer gt-md">Window</div>
      <div class="cursor-pointer gt-md">Help</div>
      <q-space />
      <q-btn dense flat icon="airplay" class="gt-xs" />
      <q-btn dense flat icon="battery_charging_full" />
      <q-btn dense flat icon="wifi" />
      <div>9:41</div>
      <q-btn dense flat icon="search" />
      <q-btn dense flat icon="list" /> <q-btn dense flat icon="search" />
      <q-btn dense flat icon="search" />
    </q-bar>

    <q-bar class="bg-black text-white">
      <q-btn dense flat :icon="fabApple" />
      <div class="text-weight-bold">App</div>
      <div class="cursor-pointer gt-md">File</div>
      <div class="cursor-pointer gt-md">Edit</div>
      <div class="cursor-pointer gt-md">View</div>
      <div class="cursor-pointer gt-md">Window</div>
      <div class="cursor-pointer gt-md">Help</div>
      <q-space />
      <q-btn dense flat icon="airplay" class="gt-xs" />
      <q-btn dense flat icon="battery_charging_full" />
      <q-btn dense flat icon="wifi" />
      <div>9:41</div>
      <q-btn dense flat icon="search" />
      <q-btn dense flat icon="list" />
    </q-bar>

    <q-bar>
      <q-btn dense flat round icon="lens" size="8.5px" color="red" />
      <q-btn dense flat round icon="lens" size="8.5px" color="yellow" />
      <q-btn dense flat round icon="lens" size="8.5px" color="green" />
      <div class="col text-center text-weight-bold">My-App</div>
    </q-bar>

    <q-bar dark class="bg-primary text-white">
      <q-btn dense flat round icon="lens" size="8.5px" color="red" />
      <q-btn dense flat round icon="lens" size="8.5px" color="yellow" />
      <q-btn dense flat round icon="lens" size="8.5px" color="green" />
      <div class="col text-center text-weight-bold">My-App</div>
    </q-bar>
  </div>
  <div>
    <QBtn color="primary" label="SAVE" />
  </div>

  <q-dialog v-model="fullHeight" full-height>
    <q-card class="column full-height" style="width: 300px">
      <q-card-section>
        <div class="text-h6">Full Height</div>
      </q-card-section>

      <q-card-section class="col q-pt-none">
        Click/Tap on the backdrop. Test
      </q-card-section>
      <q-card-section class="col q-pt-none">
        Click/Tap on the backdrop. Test
      </q-card-section>

      <q-card-actions align="right" class="bg-white text-teal">
        <q-btn flat label="OK" v-close-popup />
      </q-card-actions>
    </q-card>
  </q-dialog>

  <div class="q-pa-md q-gutter-sm">
    <q-btn color="white" text-color="black" label="Standard" />
    <q-btn color="primary" label="Primary" />
    <q-btn color="secondary" label="Secondary" />
    <q-btn color="amber" glossy label="Amber" />
    <q-btn color="brown-5" label="Brown 5" />
    <q-btn color="deep-orange" glossy label="Deep Orange" />
    <q-btn color="purple" label="Purple" />
    <q-btn color="black" label="Black" />
  </div>
</template>

<script setup>
import { ref } from "vue";

const fullHeight = ref(false);

onMounted(() => {
  console.log("mounted");
});
</script>
