<template>
    <div>

      <QBtn color="primary" label="Primary" />
      <QBtn @click="fullHeight=true" color="secondary" label="Secondary" />
      <QBtn @click="fullHeight=true" color="secondary" label="Secondary TEST ss" />

  </div>
  <div>
    <QBtn color="primary" label="SAVE" />
  </div>

  <q-dialog
      v-model="fullHeight"
      full-height
    >
      <q-card class="column full-height" style="width: 300px">
        <q-card-section>
          <div class="text-h6">Full Height</div>
        </q-card-section>

        <q-card-section class="col q-pt-none">
          Click/Tap on the backdrop.
          Test
        </q-card-section>
        <q-card-section class="col q-pt-none">
          Click/Tap on the backdrop.
          Test
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
import { ref } from 'vue'

const fullHeight = ref(false)

onMounted(() => {
  console.log('mounted')
})

</script>