import { EnumAbc, PrismaClient } from "@prisma/client";

const prisma = new PrismaClient({
  // log: ['query']
})

const numOfInserts = 10000

async function bootstrap() {
  let counter = 0

  while (true) {
    const rows = [...Array(numOfInserts)].map((_, i) => ({ id: counter + i + 1, enum: EnumAbc.A }))

    counter += numOfInserts
    console.log('insert count:', counter)
    await prisma.abc.createMany({
      data: rows,
      skipDuplicates: true // NOTE: It has nothing to do with memory leaks; setting it to false will cause the same memory leaks.
    })
  }
}
bootstrap()
