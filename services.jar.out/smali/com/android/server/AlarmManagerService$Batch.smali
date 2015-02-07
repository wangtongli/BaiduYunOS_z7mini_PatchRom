.class final Lcom/android/server/AlarmManagerService$Batch;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Batch"
.end annotation


# instance fields
.field final alarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field end:J

.field standalone:Z

.field start:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    .line 155
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 156
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 157
    return-void
.end method

.method constructor <init>(Lcom/android/server/AlarmManagerService$Alarm;)V
    .locals 2
    .parameter "seed"

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    .line 160
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 161
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 162
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    return-void
.end method


# virtual methods
.method add(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 6
    .parameter "alarm"

    .prologue
    .line 187
    const/4 v1, 0x0

    .line 189
    .local v1, newStart:Z
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$000()Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    move-result-object v3

    invoke-static {v2, p1, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 190
    .local v0, index:I
    if-gez v0, :cond_0

    .line 191
    rsub-int/lit8 v2, v0, 0x0

    add-int/lit8 v0, v2, -0x1

    .line 193
    :cond_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 197
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 198
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 199
    const/4 v1, 0x1

    .line 201
    :cond_1
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 202
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 208
    :cond_2
    return v1
.end method

.method canHold(JJ)Z
    .locals 2
    .parameter "whenElapsed"
    .parameter "maxWhen"

    .prologue
    .line 183
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v0, v0, p3

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method get(I)Lcom/android/server/AlarmManagerService$Alarm;
    .locals 1
    .parameter "index"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    return-object v0
.end method

.method getWhenByElapsedTime(J)J
    .locals 3
    .parameter "whenElapsed"

    .prologue
    .line 174
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 175
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v1, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v1, v1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 179
    :goto_1
    return-wide v1

    .line 174
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_1
    const-wide/16 v1, 0x0

    goto :goto_1
.end method

.method hasPackage(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    .line 293
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 294
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 295
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 296
    .local v1, a:Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 297
    const/4 v3, 0x1

    .line 300
    .end local v1           #a:Lcom/android/server/AlarmManagerService$Alarm;
    :goto_1
    return v3

    .line 294
    .restart local v1       #a:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 300
    .end local v1           #a:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method hasWakeups()Z
    .locals 4

    .prologue
    .line 304
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 305
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 306
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 308
    .local v1, a:Lcom/android/server/AlarmManagerService$Alarm;
    iget v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    .line 309
    const/4 v3, 0x1

    .line 312
    .end local v1           #a:Lcom/android/server/AlarmManagerService$Alarm;
    :goto_1
    return v3

    .line 305
    .restart local v1       #a:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 312
    .end local v1           #a:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method isRtcPowerOffWakeup()Z
    .locals 5

    .prologue
    .line 316
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 317
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 318
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 320
    .local v1, a:Lcom/android/server/AlarmManagerService$Alarm;
    iget v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 321
    const/4 v3, 0x1

    .line 324
    .end local v1           #a:Lcom/android/server/AlarmManagerService$Alarm;
    :goto_1
    return v3

    .line 317
    .restart local v1       #a:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 324
    .end local v1           #a:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method remove(I)Z
    .locals 9
    .parameter "userHandle"

    .prologue
    .line 266
    const/4 v1, 0x0

    .line 267
    .local v1, didRemove:Z
    const-wide/16 v5, 0x0

    .line 268
    .local v5, newStart:J
    const-wide v3, 0x7fffffffffffffffL

    .line 269
    .local v3, newEnd:J
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 270
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 271
    .local v0, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v7}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-ne v7, p1, :cond_0

    .line 272
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 273
    const/4 v1, 0x1

    goto :goto_0

    .line 275
    :cond_0
    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v7, v7, v5

    if-lez v7, :cond_1

    .line 276
    iget-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 278
    :cond_1
    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    cmp-long v7, v7, v3

    if-gez v7, :cond_2

    .line 279
    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    .line 281
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 284
    .end local v0           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_3
    if-eqz v1, :cond_4

    .line 286
    iput-wide v5, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 287
    iput-wide v3, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 289
    :cond_4
    return v1
.end method

.method remove(Landroid/app/PendingIntent;)Z
    .locals 9
    .parameter "operation"

    .prologue
    .line 212
    const/4 v1, 0x0

    .line 213
    .local v1, didRemove:Z
    const-wide/16 v5, 0x0

    .line 214
    .local v5, newStart:J
    const-wide v3, 0x7fffffffffffffffL

    .line 215
    .local v3, newEnd:J
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 216
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 217
    .local v0, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v7, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 218
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 219
    const/4 v1, 0x1

    goto :goto_0

    .line 221
    :cond_0
    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v7, v7, v5

    if-lez v7, :cond_1

    .line 222
    iget-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 224
    :cond_1
    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    cmp-long v7, v7, v3

    if-gez v7, :cond_2

    .line 225
    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    .line 227
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 230
    .end local v0           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_3
    if-eqz v1, :cond_4

    .line 232
    iput-wide v5, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 233
    iput-wide v3, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 235
    :cond_4
    return v1
.end method

.method remove(Ljava/lang/String;)Z
    .locals 9
    .parameter "packageName"

    .prologue
    .line 239
    const/4 v1, 0x0

    .line 240
    .local v1, didRemove:Z
    const-wide/16 v5, 0x0

    .line 241
    .local v5, newStart:J
    const-wide v3, 0x7fffffffffffffffL

    .line 242
    .local v3, newEnd:J
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 243
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 244
    .local v0, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v7}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 245
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 246
    const/4 v1, 0x1

    goto :goto_0

    .line 248
    :cond_0
    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v7, v7, v5

    if-lez v7, :cond_1

    .line 249
    iget-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 251
    :cond_1
    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    cmp-long v7, v7, v3

    if-gez v7, :cond_2

    .line 252
    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    .line 254
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 257
    .end local v0           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_3
    if-eqz v1, :cond_4

    .line 259
    iput-wide v5, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 260
    iput-wide v3, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 262
    :cond_4
    return v1
.end method

.method size()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 330
    .local v0, b:Ljava/lang/StringBuilder;
    const-string v1, "Batch{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    const-string v1, " num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 332
    const-string v1, " start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 333
    const-string v1, " end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 334
    iget-boolean v1, p0, Lcom/android/server/AlarmManagerService$Batch;->standalone:Z

    if-eqz v1, :cond_0

    .line 335
    const-string v1, " STANDALONE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    :cond_0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
