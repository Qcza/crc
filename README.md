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

- make the script executable
```shell script
sudo chmod +x ~/.crc/crc.sh
```

- create the symlink in the `usr/local/bin` directory
```shell script
ln -s ~/.crc/crc.sh /usr/local/bin/crc
```

### Usage
Run the script in the location where the new directory with the component should be created.

#### Creating component
```shell script
crc -n <ComponentName>
```

#### Creating component wrapped with React.memo
```shell script
crc -n <ComponentName> -m
```
