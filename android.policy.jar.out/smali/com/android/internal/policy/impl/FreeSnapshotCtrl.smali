.class Lcom/android/internal/policy/impl/FreeSnapshotCtrl;
.super Ljava/lang/Object;
.source "FreeSnapshotCtrl.java"

# interfaces
.implements Lcom/android/internal/policy/impl/IKeyBeforeDispatchingHandler;
.implements Lcom/android/internal/policy/impl/ISettingListener;


# static fields
.field private static final FREE_SNAPSHOT:Ljava/lang/String; = "free_snapshot"

.field private static final FREE_SNAPSHOT_NOT_FIRST_START:Ljava/lang/String; = "free_snapshot_not_first_started"

.field private static final KEY_FIRST_START:Ljava/lang/String; = "first_start"

.field private static final KEY_IS_AT_HOME:Ljava/lang/String; = "isAtHome"

.field private static final TAG:Ljava/lang/String; = "FreeSnapshotCtrl"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFreeSnapshot:I

.field private mNotFirstStart:I

.field private mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V
    .locals 0
    .parameter "manager"
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 35
    iput-object p2, p0, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method private atHome(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;->getCurrentRunningAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, packageName:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;->getHomes(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 92
    .local v0, homeNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private enable()Z
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;->mFreeSnapshot:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getCurrentRunningAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 96
    const/4 v2, 0x0

    .line 97
    .local v2, recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    const-string v6, "activity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 99
    .local v0, activityManager:Landroid/app/ActivityManager;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 101
    .local v3, runningTask:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 102
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 103
    .local v4, task:Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v4, :cond_0

    .line 104
    new-instance v2, Landroid/app/ActivityManager$RecentTaskInfo;

    .end local v2           #recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    invoke-direct {v2}, Landroid/app/ActivityManager$RecentTaskInfo;-><init>()V

    .line 105
    .restart local v2       #recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    iget v6, v4, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iput v6, v2, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    iput v6, v2, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 106
    iget-object v6, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v6, :cond_0

    .line 107
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    iget-object v7, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v6

    iput-object v6, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 112
    .end local v4           #task:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_0
    if-eqz v2, :cond_1

    iget-object v6, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v6, :cond_1

    .line 113
    iget-object v6, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 114
    .local v1, cn:Landroid/content/ComponentName;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 116
    .end local v1           #cn:Landroid/content/ComponentName;
    :cond_1
    return-object v5
.end method

.method private getHomes(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    new-instance v4, Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    .local v4, names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 122
    .local v5, pm:Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const/high16 v6, 0x1

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 125
    .local v2, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 126
    .local v1, info:Landroid/content/pm/ResolveInfo;
    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    :cond_0
    return-object v4
.end method

.method private needDoFreeSnapshot(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;->enable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, 0x1

    .line 76
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendFreesnapshotBroadcast(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 4
    .parameter "phoneWindowManager"

    .prologue
    .line 80
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 81
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 82
    const-string v1, "cn.nubia.aciton.freesnapshot"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v1, "first_start"

    iget v2, p0, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;->mNotFirstStart:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    const-string v1, "isAtHome"

    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;->atHome(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 85
    iget-object v1, p1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 86
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performNubiaHapticFeedbackLw(Ljava/lang/String;IZ)Z

    .line 87
    return-void
.end method

.method private sendMenuLongPressedEvent()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;->sendFreesnapshotBroadcast(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 65
    return-void
.end method

.method private updateSnapshotSettings(Landroid/content/ContentResolver;)V
    .locals 3
    .parameter "resolver"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x2

    .line 132
    const-string v0, "free_snapshot"

    invoke-static {p1, v0, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;->mFreeSnapshot:I

    .line 134
    const-string v0, "free_snapshot_not_first_started"

    invoke-static {p1, v0, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;->mNotFirstStart:I

    .line 136
    return-void
.end method


# virtual methods
.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 2
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 57
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;->needDoFreeSnapshot(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;->sendMenuLongPressedEvent()V

    .line 60
    :cond_0
    const-wide/high16 v0, -0x8000

    return-wide v0
.end method

.method public registerSettingsObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 3
    .parameter "resolver"
    .parameter "observer"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 41
    const-string v0, "free_snapshot"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 44
    const-string v0, "free_snapshot_not_first_started"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 47
    return-void
.end method

.method public updateSettings()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;->updateSnapshotSettings(Landroid/content/ContentResolver;)V

    .line 52
    return-void
.end method
