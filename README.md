# gen_server

# 功能

- 从xlsx表格生成配置
- 生成协议
- 生成model, dao



# 配置生成

例子

```typescript
@xlsx("xxx.xlsx")
class TaskConf {
    Name string;
}
```

## 源格式

| 列名1 | 列名2 | 列名3 | 列名4 |
| ----- | ----- | ----- | ----- |
| 注释  | 注释  | 注释  | 注释  |
| 名字1 | 名字2 | 名字3 | 名字4 |
| 名字1 | 名字2 | 名字4 | 名字4 |
| 类型  | 类型  | 类型  | 类型  |
|       |       |       |       |
| 数值  | 数值  | 数值  | 数值  |

## 类型

| 类型     | 解释 | golang | lua  |      |
| -------- | ---- | ------ | ---- | ---- |
| bool     |      |        |      |      |
| int8     |      |        |      |      |
| int16    |      |        |      |      |
| int32    |      |        |      |      |
| int64    |      |        |      |      |
| uint8    |      |        |      |      |
| uint16   |      |        |      |      |
| uint32   |      |        |      |      |
| uint64   |      |        |      |      |
| string   |      |        |      |      |
| json     |      |        |      |      |
| []string |      |        |      |      |
| []int8   |      |        |      |      |
| []int16  |      |        |      |      |
| []int32  |      |        |      |      |
| []int64  |      |        |      |      |

## export script

```typescript


export("xlsx路径名", lua, converter, "目标路径")


```



## model



## loader



## bundle



# 协议生成

例子

```typescript

namespace Login {
    const MessageId = 1001;
    class Request {
		first: string;
        last?: string;
    }
    class Response {
		ErrorCode: number
    }
}
```

