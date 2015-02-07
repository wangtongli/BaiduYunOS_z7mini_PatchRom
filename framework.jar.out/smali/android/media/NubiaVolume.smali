.class public Landroid/media/NubiaVolume;
.super Ljava/lang/Object;
.source "NubiaVolume.java"


# static fields
.field private static final LOGI:Z = true

.field private static final TAG:Ljava/lang/String; = "NubiaVolume"

.field private static final ZTEMT_SOUND_SCHEME:Z = true


# instance fields
.field private LAST_RINGER_MODE:Ljava/lang/String;

.field isVibrateWhenSilent:I

.field private mAffectStreamTypeByRingerModeForNubia:[I

.field private mAudioService:Landroid/media/AudioService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mLastPersistMusicVolume:[I

.field private mLastPersistMusicVolumeName:[Ljava/lang/String;

.field private mLastRingerMode:I

.field private mLastSilentMode:I

.field private mPrevVolDirection:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioService;)V
    .locals 4
    .parameter "context"
    .parameter "audioService"

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string/jumbo v0, "nb_last_ringer_mode"

    iput-object v0, p0, Landroid/media/NubiaVolume;->LAST_RINGER_MODE:Ljava/lang/String;

    .line 20
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/media/NubiaVolume;->mAffectStreamTypeByRingerModeForNubia:[I

    .line 21
    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v1, "nb_stream_music_before_muted"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "nb_stream_system_before_muted"

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/media/NubiaVolume;->mLastPersistMusicVolumeName:[Ljava/lang/String;

    .line 27
    iput v3, p0, Landroid/media/NubiaVolume;->mPrevVolDirection:I

    .line 31
    iput-object p2, p0, Landroid/media/NubiaVolume;->mAudioService:Landroid/media/AudioService;

    .line 32
    iput-object p1, p0, Landroid/media/NubiaVolume;->mContext:Landroid/content/Context;

    .line 33
    iget-object v0, p0, Landroid/media/NubiaVolume;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/media/NubiaVolume;->mContentResolver:Landroid/content/ContentResolver;

    .line 34
    return-void

    .line 20
    nop

    :array_0
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 165
    const-string v0, "NubiaVolume"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void
.end method

.method private sendBroadcastToAll(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 146
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 148
    .local v0, ident:J
    :try_start_0
    iget-object v2, p0, Landroid/media/NubiaVolume;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 152
    return-void

    .line 150
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method


# virtual methods
.method public broadcastVibrateWhenSilent(Z)V
    .locals 2
    .parameter "vibrateWhenSilent"

    .prologue
    .line 156
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VIBRATE_WHEN_SILENT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, broadcast:Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_VIBRATE_WHEN_SILENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 159
    invoke-direct {p0, v0}, Landroid/media/NubiaVolume;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 161
    .end local v0           #broadcast:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public getDefaultIndexForDevice(III)I
    .locals 1
    .parameter "streamType"
    .parameter "device"
    .parameter "def"

    .prologue
    .line 114
    and-int/lit16 v0, p2, 0x18c

    if-eqz v0, :cond_1

    .line 123
    .end local p3
    :cond_0
    :goto_0
    return p3

    .line 120
    .restart local p3
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 121
    const/4 p3, 0x7

    goto :goto_0
.end method

.method public initStateForSilentMode(I)V
    .locals 9
    .parameter "ringerMode"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x2

    .line 37
    iget-object v4, p0, Landroid/media/NubiaVolume;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Landroid/media/NubiaVolume;->LAST_RINGER_MODE:Ljava/lang/String;

    invoke-static {v4, v5, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 38
    .local v2, lastRingerMode:I
    iget-object v4, p0, Landroid/media/NubiaVolume;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "nb_vibrate_when_silent"

    invoke-static {v4, v5, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 39
    .local v3, vibrateWhenSilent:I
    if-ne p1, v8, :cond_1

    if-eq v3, v8, :cond_1

    .line 40
    const/4 v3, 0x1

    .line 41
    iget-object v4, p0, Landroid/media/NubiaVolume;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "nb_vibrate_when_silent"

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 46
    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/media/NubiaVolume;->mLastPersistMusicVolumeName:[Ljava/lang/String;

    array-length v4, v4

    new-array v1, v4, [I

    .line 47
    .local v1, lastPersistMusicVolume:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v4, p0, Landroid/media/NubiaVolume;->mLastPersistMusicVolumeName:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 48
    iget-object v4, p0, Landroid/media/NubiaVolume;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Landroid/media/NubiaVolume;->mLastPersistMusicVolumeName:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-static {v4, v5, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    aput v4, v1, v0

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 42
    .end local v0           #i:I
    .end local v1           #lastPersistMusicVolume:[I
    :cond_1
    if-nez p1, :cond_0

    if-eqz v3, :cond_0

    .line 43
    const/4 v3, 0x0

    .line 44
    iget-object v4, p0, Landroid/media/NubiaVolume;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "nb_vibrate_when_silent"

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    goto :goto_0

    .line 50
    .restart local v0       #i:I
    .restart local v1       #lastPersistMusicVolume:[I
    :cond_2
    iput-object v1, p0, Landroid/media/NubiaVolume;->mLastPersistMusicVolume:[I

    .line 51
    iput v3, p0, Landroid/media/NubiaVolume;->isVibrateWhenSilent:I

    .line 52
    iput v2, p0, Landroid/media/NubiaVolume;->mLastRingerMode:I

    .line 53
    return-void
.end method

.method public isVibrateWhenSilent()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 93
    iget v1, p0, Landroid/media/NubiaVolume;->isVibrateWhenSilent:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public modifyIndexForDevice(III)V
    .locals 3
    .parameter "streamType"
    .parameter "index"
    .parameter "device"

    .prologue
    const/4 v2, 0x1

    .line 104
    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 108
    iget-object v0, p0, Landroid/media/NubiaVolume;->mLastPersistMusicVolume:[I

    const/4 v1, 0x0

    add-int/lit8 v2, p2, 0x5

    div-int/lit8 v2, v2, 0xa

    aput v2, v0, v1

    goto :goto_0

    .line 109
    :cond_2
    if-ne p1, v2, :cond_0

    .line 110
    iget-object v0, p0, Landroid/media/NubiaVolume;->mLastPersistMusicVolume:[I

    add-int/lit8 v1, p2, 0x5

    div-int/lit8 v1, v1, 0xa

    aput v1, v0, v2

    goto :goto_0
.end method

.method public modifyRingerModeAndMusicVolume(IIIIIII)I
    .locals 5
    .parameter "direction"
    .parameter "streamType"
    .parameter "streamTypeAlias"
    .parameter "flags"
    .parameter "aliasIndex"
    .parameter "device"
    .parameter "step"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 128
    if-ne p1, v4, :cond_0

    iget-object v1, p0, Landroid/media/NubiaVolume;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v1}, Landroid/media/AudioService;->getRingerMode()I

    move-result v1

    if-eq v1, v2, :cond_0

    if-eqz p5, :cond_1

    :cond_0
    move v0, p7

    .line 142
    .end local p7
    .local v0, step:I
    :goto_0
    return v0

    .line 133
    .end local v0           #step:I
    .restart local p7
    :cond_1
    if-ne p3, v4, :cond_2

    .line 134
    iget-object v1, p0, Landroid/media/NubiaVolume;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v1, v2}, Landroid/media/AudioService;->setRingerMode(I)V

    .line 136
    :cond_2
    and-int/lit8 v1, p4, 0x20

    if-nez v1, :cond_3

    const/4 v1, 0x3

    if-ne p3, v1, :cond_3

    if-ne p6, v2, :cond_3

    iget-object v1, p0, Landroid/media/NubiaVolume;->mLastPersistMusicVolume:[I

    aget v1, v1, v3

    if-eqz v1, :cond_3

    .line 140
    iget-object v1, p0, Landroid/media/NubiaVolume;->mAudioService:Landroid/media/AudioService;

    iget-object v2, p0, Landroid/media/NubiaVolume;->mLastPersistMusicVolume:[I

    aget v2, v2, v3

    mul-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2, p2, p3, v3}, Landroid/media/AudioService;->rescaleIndex(IIII)I

    move-result p7

    :cond_3
    move v0, p7

    .line 142
    .end local p7
    .restart local v0       #step:I
    goto :goto_0
.end method

.method public persistWhenRingerModeChange(I)V
    .locals 5
    .parameter "ringerMode"

    .prologue
    const/4 v4, -0x2

    .line 85
    iget-object v1, p0, Landroid/media/NubiaVolume;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/media/NubiaVolume;->LAST_RINGER_MODE:Ljava/lang/String;

    iget v3, p0, Landroid/media/NubiaVolume;->mLastRingerMode:I

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 86
    iget-object v2, p0, Landroid/media/NubiaVolume;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "nb_vibrate_when_silent"

    invoke-virtual {p0}, Landroid/media/NubiaVolume;->isVibrateWhenSilent()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 87
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Landroid/media/NubiaVolume;->mLastPersistMusicVolume:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 88
    iget-object v1, p0, Landroid/media/NubiaVolume;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/media/NubiaVolume;->mLastPersistMusicVolumeName:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Landroid/media/NubiaVolume;->mLastPersistMusicVolume:[I

    aget v3, v3, v0

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 86
    .end local v0           #i:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 90
    .restart local v0       #i:I
    :cond_1
    return-void
.end method

.method public setVibrateWhenSilent(I)V
    .locals 2
    .parameter "vibrateWhenSilent"

    .prologue
    const/4 v0, 0x1

    .line 97
    iget v1, p0, Landroid/media/NubiaVolume;->isVibrateWhenSilent:I

    if-eq p1, v1, :cond_0

    .line 98
    iput p1, p0, Landroid/media/NubiaVolume;->isVibrateWhenSilent:I

    .line 99
    iget v1, p0, Landroid/media/NubiaVolume;->isVibrateWhenSilent:I

    if-ne v1, v0, :cond_1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/media/NubiaVolume;->broadcastVibrateWhenSilent(Z)V

    .line 101
    :cond_0
    return-void

    .line 99
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateStateWhenRingerModeChange(I)V
    .locals 4
    .parameter "ringerMode"

    .prologue
    const/4 v3, 0x1

    .line 74
    iget-object v1, p0, Landroid/media/NubiaVolume;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v1}, Landroid/media/AudioService;->getRingerMode()I

    move-result v1

    iput v1, p0, Landroid/media/NubiaVolume;->mLastRingerMode:I

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLastRingerMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/NubiaVolume;->mLastRingerMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/media/NubiaVolume;->logi(Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, type:I
    if-ne p1, v3, :cond_1

    .line 78
    invoke-virtual {p0, v3}, Landroid/media/NubiaVolume;->setVibrateWhenSilent(I)V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    if-nez p1, :cond_0

    .line 80
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/media/NubiaVolume;->setVibrateWhenSilent(I)V

    goto :goto_0
.end method

.method public updateStreamVolume(ZII)V
    .locals 7
    .parameter "persist"
    .parameter "streamType"
    .parameter "ringerMode"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x2

    .line 56
    if-eqz p1, :cond_1

    .line 57
    if-eq p2, v4, :cond_0

    if-ne p2, v3, :cond_1

    .line 58
    :cond_0
    if-ne p2, v4, :cond_2

    move v1, v2

    .line 59
    .local v1, i:I
    :goto_0
    iget-object v4, p0, Landroid/media/NubiaVolume;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, p2, v6}, Landroid/media/AudioService;->getCurrentIndexForDevice(II)I

    move-result v0

    .line 60
    .local v0, currentIndex:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "streamType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";currentIndex:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";ringerMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";mLastPersistMusicVolume:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/NubiaVolume;->mLastPersistMusicVolume:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/media/NubiaVolume;->logi(Ljava/lang/String;)V

    .line 61
    if-ne p3, v6, :cond_3

    if-nez v0, :cond_3

    .line 62
    iget-object v3, p0, Landroid/media/NubiaVolume;->mAudioService:Landroid/media/AudioService;

    iget-object v4, p0, Landroid/media/NubiaVolume;->mLastPersistMusicVolume:[I

    aget v4, v4, v1

    invoke-virtual {v3, p2, v6, v4, v2}, Landroid/media/AudioService;->setStreamVolumeForDevice(IIII)V

    .line 71
    .end local v0           #currentIndex:I
    .end local v1           #i:I
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v1, v3

    .line 58
    goto :goto_0

    .line 63
    .restart local v0       #currentIndex:I
    .restart local v1       #i:I
    :cond_3
    if-eq p3, v3, :cond_4

    if-nez p3, :cond_1

    .line 64
    :cond_4
    iget v3, p0, Landroid/media/NubiaVolume;->mLastRingerMode:I

    if-ne v3, v6, :cond_5

    if-eqz v0, :cond_6

    :cond_5
    if-eqz v0, :cond_1

    .line 65
    :cond_6
    iget-object v3, p0, Landroid/media/NubiaVolume;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v3, p2, v6, v2, v2}, Landroid/media/AudioService;->setStreamVolumeForDevice(IIII)V

    .line 66
    iget-object v2, p0, Landroid/media/NubiaVolume;->mLastPersistMusicVolume:[I

    aput v0, v2, v1

    goto :goto_1
.end method
