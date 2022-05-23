import applyCaseMiddleware from "axios-case-converter"
import axios from "axios"

// applyCaseMiddleware: 変換ライブラリ
// - axiosで受け取ったレスポンスの値:スネークケース →キャメルケース
// - 送信するリクエストの値:キャメルケース →スネークケース

// ヘッダーに関してはケバブケースのままで良いので適用を無視するオプションを追加
const options = {
  ignoreHeaders: true
}

const client = applyCaseMiddleware(axios.create({
  baseURL: "http://localhost:3001/api/v1"
}), options)

export default client
