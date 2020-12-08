## CRC (Create-React-Component)
Create the directory and files with followed structure
```
index.ts
styles.ts
<ComponentName>.tsx
<ComponentName>.stories.tsx
__tests__/<ComponentName>.test.tsx
```


### Setup
- cp this directory to the `~/.crc`

```shell script
cp -r <dir path> ~/.crc
```

- make script executable
```shell script
sudo chmod +x ~/.crc/crc.sh
```

- make symlink in the `usr/local/bin` directory
```shell script
ln -s ~/.crc/crc.sh /usr/local/bin/crc
```

### Usage
Run the script in the directory where the new directory with the component should be created.

```shell script
crc <ComponentName>
```
