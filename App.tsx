import { StatusBar } from "expo-status-bar";
import { useState } from "react";
import { StyleSheet, Text, View, Button, NativeModules } from "react-native";
// const {CalendarModule} = NativeModules;

export default function App() {
  console.log(NativeModules.LiveActivityManager);

  const [count, setCount] = useState(0);

  // NativeModules.LiveActivityModule.createCalendarEvent("A", "B");
  return (
    <View style={styles.container}>
      <Text>Open up App.tsx to start working on your app!</Text>

      <Button
        onPress={() => {
          if (count === 0) {
            NativeModules.LiveActivityManager.addEvent("A", "B", 1);
            setCount(1);
          } else {
            NativeModules.LiveActivityManager.updateTimer(count);
            setCount(count + 1);
          }
        }}
        title="Click me"
      />

      <StatusBar style="auto" />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "#fff",
    alignItems: "center",
    justifyContent: "center",
  },
});
