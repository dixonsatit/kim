<template>


    <div>

      <QBtn color="primary" label="Primary" />
      <QBtn @click="fullHeight=true" color="secondary" label="Secondary" />
      <QBtn @click="fullHeight=true" color="secondary" label="Secondary" />

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
        </q-card-section>

        <q-card-actions align="right" class="bg-white text-teal">
          <q-btn flat label="OK" v-close-popup />
        </q-card-actions>
      </q-card>
    </q-dialog>
</template>

<script setup>
import { ref } from 'vue'

const fullHeight = ref(false)

onMounted(() => {
  console.log('mounted')
})

</script>