.class Lcom/facebook/imagepipeline/cache/BufferedDiskCache$2;
.super Ljava/lang/Object;
.source "BufferedDiskCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->getAsync(Lcom/facebook/cache/common/CacheKey;Ljava/util/concurrent/atomic/AtomicBoolean;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

.field final synthetic val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$key:Lcom/facebook/cache/common/CacheKey;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/cache/common/CacheKey;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$2;->this$0:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    iput-object p2, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$2;->val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$2;->val$key:Lcom/facebook/cache/common/CacheKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/facebook/imagepipeline/image/EncodedImage;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 179
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BufferedDiskCache#getAsync"

    .line 180
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$2;->val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_6

    .line 185
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$2;->this$0:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    invoke-static {v0}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->access$100(Lcom/facebook/imagepipeline/cache/BufferedDiskCache;)Lcom/facebook/imagepipeline/cache/StagingArea;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$2;->val$key:Lcom/facebook/cache/common/CacheKey;

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/cache/StagingArea;->get(Lcom/facebook/cache/common/CacheKey;)Lcom/facebook/imagepipeline/image/EncodedImage;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 187
    invoke-static {}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->access$200()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Found image for %s in staging area"

    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$2;->val$key:Lcom/facebook/cache/common/CacheKey;

    invoke-interface {v3}, Lcom/facebook/cache/common/CacheKey;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 188
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$2;->this$0:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    invoke-static {v1}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->access$300(Lcom/facebook/imagepipeline/cache/BufferedDiskCache;)Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$2;->val$key:Lcom/facebook/cache/common/CacheKey;

    invoke-interface {v1, v2}, Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;->onStagingAreaHit(Lcom/facebook/cache/common/CacheKey;)V

    goto :goto_0

    .line 190
    :cond_1
    invoke-static {}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->access$200()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Did not find image for %s in staging area"

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$2;->val$key:Lcom/facebook/cache/common/CacheKey;

    invoke-interface {v2}, Lcom/facebook/cache/common/CacheKey;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 191
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$2;->this$0:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    invoke-static {v0}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->access$300(Lcom/facebook/imagepipeline/cache/BufferedDiskCache;)Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;->onStagingAreaMiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 194
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$2;->this$0:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$2;->val$key:Lcom/facebook/cache/common/CacheKey;

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->access$400(Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/cache/common/CacheKey;)Lcom/facebook/common/memory/PooledByteBuffer;

    move-result-object v0

    .line 195
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->of(Ljava/io/Closeable;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 197
    :try_start_2
    new-instance v1, Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-direct {v1, v0}, Lcom/facebook/imagepipeline/image/EncodedImage;-><init>(Lcom/facebook/common/references/CloseableReference;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    :try_start_3
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v0, v1

    .line 206
    :goto_0
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 207
    invoke-static {}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->access$200()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Host thread was interrupted, decreasing reference count"

    invoke-static {v1, v2}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 209
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/image/EncodedImage;->close()V

    .line 211
    :cond_2
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 216
    :cond_3
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 217
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :cond_4
    return-object v0

    :catchall_0
    move-exception v1

    .line 199
    :try_start_5
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 200
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_0
    nop

    const/4 v0, 0x0

    .line 216
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 217
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :cond_5
    return-object v0

    .line 183
    :cond_6
    :try_start_6
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    .line 216
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 217
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .line 219
    :cond_7
    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 175
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$2;->call()Lcom/facebook/imagepipeline/image/EncodedImage;

    move-result-object v0

    return-object v0
.end method
