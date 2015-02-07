.class public Lcom/android/server/net/SwitchSimCautionUtils;
.super Ljava/lang/Object;
.source "SwitchSimCautionUtils.java"


# static fields
.field private static mAnotherSubscription:I

.field private static mCurrentSubscription:I

.field private static mOverWarningNotified:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/NetworkTemplate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 29
    sput v0, Lcom/android/server/net/SwitchSimCautionUtils;->mAnotherSubscription:I

    .line 30
    sput v0, Lcom/android/server/net/SwitchSimCautionUtils;->mCurrentSubscription:I

    .line 32
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/android/server/net/SwitchSimCautionUtils;->mOverWarningNotified:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static addSwitchIntentToBuilder(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/net/NetworkTemplate;Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "context"
    .parameter "builder"
    .parameter "template"
    .parameter "body"

    .prologue
    .line 92
    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 93
    invoke-static {p2}, Lcom/android/server/net/SwitchSimCautionUtils;->buildNetworkOverWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v0

    .line 94
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    const/high16 v2, 0x800

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 96
    return-void
.end method

.method public static buildNetworkOverWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 4
    .parameter "template"

    .prologue
    .line 39
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 40
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.net.NetworkOverWarningActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 42
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 43
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 44
    const-string v1, "currentSim"

    sget v2, Lcom/android/server/net/SwitchSimCautionUtils;->mCurrentSubscription:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 45
    const-string v1, "anotherSim"

    sget v2, Lcom/android/server/net/SwitchSimCautionUtils;->mAnotherSubscription:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 46
    return-object v0
.end method

.method private static currentTimeMillis(Landroid/util/TrustedTime;)J
    .locals 2
    .parameter "time"

    .prologue
    .line 70
    invoke-interface {p0}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method private static getAnotherSimCardSubscription()I
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lcom/android/server/net/SwitchSimCautionUtils;->getCurrentSimCardSubscription()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput v0, Lcom/android/server/net/SwitchSimCautionUtils;->mAnotherSubscription:I

    .line 75
    sget v0, Lcom/android/server/net/SwitchSimCautionUtils;->mAnotherSubscription:I

    return v0

    .line 74
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCurrentSimCardSubscription()I
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Lcn/nubia/telframeadapter/common/NbTelephonyManager;->getDefault()Lcn/nubia/telframeadapter/common/NbTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/telframeadapter/common/NbTelephonyManager;->getDefaultDataSubscription()I

    move-result v0

    sput v0, Lcom/android/server/net/SwitchSimCautionUtils;->mCurrentSubscription:I

    .line 80
    sget v0, Lcom/android/server/net/SwitchSimCautionUtils;->mCurrentSubscription:I

    return v0
.end method

.method private static getTotalBytes(Landroid/net/NetworkTemplate;JJLandroid/net/INetworkStatsService;)J
    .locals 9
    .parameter "template"
    .parameter "start"
    .parameter "end"
    .parameter "networkStats"

    .prologue
    const-wide/16 v7, 0x0

    .line 114
    move-object v0, p5

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    :try_start_0
    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsService;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    .line 119
    :goto_0
    return-wide v0

    .line 115
    :catch_0
    move-exception v6

    .local v6, e:Ljava/lang/RuntimeException;
    move-wide v0, v7

    .line 116
    goto :goto_0

    .line 117
    .end local v6           #e:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v6

    .local v6, e:Landroid/os/RemoteException;
    move-wide v0, v7

    .line 119
    goto :goto_0
.end method

.method private static isAntherSimCardOverWarning(Ljava/util/HashMap;Landroid/net/INetworkStatsService;Landroid/util/TrustedTime;)Z
    .locals 15
    .parameter
    .parameter "networkStats"
    .parameter "time"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/NetworkTemplate;",
            "Landroid/net/NetworkPolicy;",
            ">;",
            "Landroid/net/INetworkStatsService;",
            "Landroid/util/TrustedTime;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, networkPolicy:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/NetworkTemplate;Landroid/net/NetworkPolicy;>;"
    invoke-static/range {p2 .. p2}, Lcom/android/server/net/SwitchSimCautionUtils;->currentTimeMillis(Landroid/util/TrustedTime;)J

    move-result-wide v6

    .line 52
    .local v6, currentTime:J
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/NetworkPolicy;

    .line 54
    .local v10, policy:Landroid/net/NetworkPolicy;
    iget-object v0, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/nubia/telframeadapter/common/NbTelephonyManager;->getDefault()Lcn/nubia/telframeadapter/common/NbTelephonyManager;

    move-result-object v5

    invoke-static {}, Lcom/android/server/net/SwitchSimCautionUtils;->getAnotherSimCardSubscription()I

    move-result v13

    invoke-virtual {v5, v13}, Lcn/nubia/telframeadapter/common/NbTelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    .line 57
    .local v9, isAnthoerCard:Z
    if-eqz v9, :cond_0

    .line 58
    invoke-virtual {v10}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-static {v6, v7, v10}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v1

    .line 61
    .local v1, start:J
    move-wide v3, v6

    .line 62
    .local v3, end:J
    iget-object v0, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/server/net/SwitchSimCautionUtils;->getTotalBytes(Landroid/net/NetworkTemplate;JJLandroid/net/INetworkStatsService;)J

    move-result-wide v11

    .line 64
    .local v11, totalBytes:J
    invoke-virtual {v10, v11, v12}, Landroid/net/NetworkPolicy;->isOverWarning(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v13, v10, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    cmp-long v0, v13, v1

    if-gez v0, :cond_1

    const/4 v0, 0x1

    .line 66
    .end local v1           #start:J
    .end local v3           #end:J
    .end local v9           #isAnthoerCard:Z
    .end local v10           #policy:Landroid/net/NetworkPolicy;
    .end local v11           #totalBytes:J
    :goto_0
    return v0

    .line 64
    .restart local v1       #start:J
    .restart local v3       #end:J
    .restart local v9       #isAnthoerCard:Z
    .restart local v10       #policy:Landroid/net/NetworkPolicy;
    .restart local v11       #totalBytes:J
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 66
    .end local v1           #start:J
    .end local v3           #end:J
    .end local v9           #isAnthoerCard:Z
    .end local v10           #policy:Landroid/net/NetworkPolicy;
    .end local v11           #totalBytes:J
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSwitchSimNeeded(Ljava/util/HashMap;Landroid/net/NetworkPolicy;Landroid/net/INetworkStatsService;Landroid/util/TrustedTime;)Z
    .locals 3
    .parameter
    .parameter "policy"
    .parameter "networkStats"
    .parameter "time"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/NetworkTemplate;",
            "Landroid/net/NetworkPolicy;",
            ">;",
            "Landroid/net/NetworkPolicy;",
            "Landroid/net/INetworkStatsService;",
            "Landroid/util/TrustedTime;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, networkPolicy:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/NetworkTemplate;Landroid/net/NetworkPolicy;>;"
    const/4 v0, 0x0

    .line 85
    invoke-static {}, Lcn/nubia/telframeadapter/common/NbTelephonyManager;->isMoreThanOneSim()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Landroid/net/NetworkPolicy;->switchSimCaution:Z

    if-eqz v1, :cond_0

    invoke-static {p0, p2, p3}, Lcom/android/server/net/SwitchSimCautionUtils;->isAntherSimCardOverWarning(Ljava/util/HashMap;Landroid/net/INetworkStatsService;Landroid/util/TrustedTime;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcn/nubia/telframeadapter/common/NbTelephonyManager;->getDefault()Lcn/nubia/telframeadapter/common/NbTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/telframeadapter/common/NbTelephonyManager;->getPhoneType(I)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static notifyOverWarningLocked(Landroid/net/NetworkTemplate;Landroid/content/Context;)V
    .locals 1
    .parameter "template"
    .parameter "context"

    .prologue
    .line 101
    sget-object v0, Lcom/android/server/net/SwitchSimCautionUtils;->mOverWarningNotified:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    invoke-static {p0}, Lcom/android/server/net/SwitchSimCautionUtils;->buildNetworkOverWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 103
    sget-object v0, Lcom/android/server/net/SwitchSimCautionUtils;->mOverWarningNotified:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_0
    return-void
.end method

.method public static notifyUnderWarningLocked(Landroid/net/NetworkTemplate;)V
    .locals 1
    .parameter "template"

    .prologue
    .line 108
    sget-object v0, Lcom/android/server/net/SwitchSimCautionUtils;->mOverWarningNotified:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method
