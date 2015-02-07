.class Landroid/media/IAudioService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAudioService.java"

# interfaces
.implements Landroid/media/IAudioService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IAudioService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .parameter "remote"

    .prologue
    .line 883
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 884
    iput-object p1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 885
    return-void
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I
    .locals 6
    .parameter "fd"
    .parameter "clientId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1548
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1549
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1552
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IAudioService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1553
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/media/IAudioFocusDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1554
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1555
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x29

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1556
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1557
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1560
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1561
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1563
    return v2

    .line 1553
    .end local v2           #_result:I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1560
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1561
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public adjustLocalOrRemoteStreamVolume(IILjava/lang/String;)V
    .locals 5
    .parameter "streamType"
    .parameter "direction"
    .parameter "callingPackage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 930
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 932
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IAudioService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 933
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 934
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 935
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 936
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 939
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 941
    return-void

    .line 939
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public adjustMasterVolume(IILjava/lang/String;)V
    .locals 5
    .parameter "direction"
    .parameter "flags"
    .parameter "callingPackage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 980
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 981
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 983
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 984
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 985
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 986
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 987
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 988
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 991
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 992
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 994
    return-void

    .line 991
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 992
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public adjustStreamVolume(IIILjava/lang/String;)V
    .locals 5
    .parameter "streamType"
    .parameter "direction"
    .parameter "flags"
    .parameter "callingPackage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 962
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 963
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 965
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 966
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 967
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 968
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 969
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 970
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 971
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 974
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 975
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 977
    return-void

    .line 974
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 975
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public adjustSuggestedStreamVolume(IIILjava/lang/String;)V
    .locals 5
    .parameter "direction"
    .parameter "suggestedStreamType"
    .parameter "flags"
    .parameter "callingPackage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 944
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 945
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 947
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 948
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 949
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 950
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 951
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 952
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 953
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 956
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 957
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 959
    return-void

    .line 956
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 957
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public adjustVolume(IILjava/lang/String;)V
    .locals 5
    .parameter "direction"
    .parameter "flags"
    .parameter "callingPackage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 896
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 897
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 899
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 900
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 901
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 902
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 903
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 904
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 907
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 908
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 910
    return-void

    .line 907
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 908
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 888
    iget-object v0, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V
    .locals 5
    .parameter "address"
    .parameter "support"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1416
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1418
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1419
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1420
    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1421
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x21

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1424
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1426
    return-void

    .line 1420
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1424
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 5
    .parameter "keyEvent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1599
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1601
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IAudioService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1602
    if-eqz p1, :cond_0

    .line 1603
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1604
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/KeyEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1609
    :goto_0
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2c

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1612
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1614
    return-void

    .line 1607
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1612
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public dispatchMediaKeyEventUnderWakelock(Landroid/view/KeyEvent;)V
    .locals 5
    .parameter "keyEvent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1617
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1618
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1620
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1621
    if-eqz p1, :cond_0

    .line 1622
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1623
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/KeyEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1628
    :goto_0
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1629
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1632
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1633
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1635
    return-void

    .line 1626
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1632
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1633
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public forceVolumeControlStream(ILandroid/os/IBinder;)V
    .locals 5
    .parameter "streamType"
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2059
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2060
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2062
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2063
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2064
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2065
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x42

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2066
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2069
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2070
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2072
    return-void

    .line 2069
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2070
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getCurrentAudioFocus()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1582
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1583
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1586
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IAudioService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1587
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1588
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1589
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1592
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1593
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1595
    return v2

    .line 1592
    .end local v2           #_result:I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1593
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 892
    const-string v0, "android.media.IAudioService"

    return-object v0
.end method

.method public getLastAudibleMasterVolume()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1219
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1222
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IAudioService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1223
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1224
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1225
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1228
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1231
    return v2

    .line 1228
    .end local v2           #_result:I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getLastAudibleStreamVolume(I)I
    .locals 6
    .parameter "streamType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1200
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1201
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1204
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IAudioService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1205
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1206
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x13

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1207
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1208
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1211
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1214
    return v2

    .line 1211
    .end local v2           #_result:I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getMasterMaxVolume()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1183
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1184
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1187
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IAudioService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1188
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1189
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1190
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1193
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1196
    return v2

    .line 1193
    .end local v2           #_result:I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getMasterStreamType()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2108
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2111
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IAudioService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2112
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x45

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2113
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2114
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2117
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2118
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2120
    return v2

    .line 2117
    .end local v2           #_result:I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2118
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getMasterVolume()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1149
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1152
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IAudioService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1153
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1154
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1155
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1158
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1159
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1161
    return v2

    .line 1158
    .end local v2           #_result:I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1159
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getMode()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1335
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1336
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1339
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IAudioService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1340
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1341
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1342
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1345
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1348
    return v2

    .line 1345
    .end local v2           #_result:I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getRemoteStreamMaxVolume()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1981
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1982
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1985
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IAudioService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1986
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1987
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1988
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1991
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1992
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1994
    return v2

    .line 1991
    .end local v2           #_result:I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1992
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getRemoteStreamVolume()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1998
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1999
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2002
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IAudioService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2003
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2004
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2005
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2008
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2009
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2011
    return v2

    .line 2008
    .end local v2           #_result:I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2009
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getRingerMode()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1250
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1251
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1254
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IAudioService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1255
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1256
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1257
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1260
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1261
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1263
    return v2

    .line 1260
    .end local v2           #_result:I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1261
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getRingtonePlayer()Landroid/media/IRingtonePlayer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2090
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2091
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2094
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IAudioService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2095
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x44

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2096
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2097
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IRingtonePlayer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRingtonePlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2100
    .local v2, _result:Landroid/media/IRingtonePlayer;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2103
    return-object v2

    .line 2100
    .end local v2           #_result:Landroid/media/IRingtonePlayer;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getStreamMaxVolume(I)I
    .locals 6
    .parameter "streamType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1165
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1166
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1169
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IAudioService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1170
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1171
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1172
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1173
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1176
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1177
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1179
    return v2

    .line 1176
    .end local v2           #_result:I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1177
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getStreamVolume(I)I
    .locals 6
    .parameter "streamType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1131
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1134
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IAudioService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1135
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1136
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1137
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1138
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1141
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1144
    return v2

    .line 1141
    .end local v2           #_result:I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getVibrateInSilent()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2221
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2222
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2225
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IAudioService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2226
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2227
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2228
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2231
    .local v2, _result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2234
    return v2

    .line 2231
    .end local v2           #_result:Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getVibrateSetting(I)I
    .locals 6
    .parameter "vibrateType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1283
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1284
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1287
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IAudioService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1288
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1289
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x18

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1290
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1291
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1294
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1297
    return v2

    .line 1294
    .end local v2           #_result:I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isBluetoothA2dpOn()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1508
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1509
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1512
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IAudioService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1513
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x27

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1514
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1515
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1518
    .local v2, _result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1521
    return v2

    .line 1518
    .end local v2           #_result:Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isBluetoothScoOn()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1476
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1477
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1480
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IAudioService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1481
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x25

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1482
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1483
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1486
    .local v2, _result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1489
    return v2

    .line 1486
    .end local v2           #_result:Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isCameraSoundForced()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2189
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2190
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2193
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IAudioService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2194
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x49

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2195
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2196
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2199
    .local v2, _result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2202
    return v2

    .line 2199
    .end local v2           #_result:Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isLocalOrRemoteMusicActive()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 913
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 914
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 917
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IAudioService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 918
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 919
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 920
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 923
    .local v2, _result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 924
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 926
    return v2

    .line 923
    .end local v2           #_result:Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 924
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isMasterMute()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1113
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1114
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1117
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IAudioService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1118
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1119
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1120
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1123
    .local v2, _result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1126
    return v2

    .line 1123
    .end local v2           #_result:Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isSpeakerphoneOn()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1444
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1445
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1448
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IAudioService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1449
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x23

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1450
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1451
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1454
    .local v2, _result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1455
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1457
    return v2

    .line 1454
    .end local v2           #_result:Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1455
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isStreamMute(I)Z
    .locals 6
    .parameter "streamType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1078
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1079
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1082
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IAudioService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1083
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1084
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1085
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1086
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1089
    .local v2, _result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1090
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1092
    return v2

    .line 1089
    .end local v2           #_result:Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1090
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public loadSoundEffects()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1377
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1378
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1381
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IAudioService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1382
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1383
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1384
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1387
    .local v2, _result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1390
    return v2

    .line 1387
    .end local v2           #_result:Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public playSoundEffect(I)V
    .locals 5
    .parameter "effectType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1352
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1354
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IAudioService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1355
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1356
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1c

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1359
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1361
    return-void

    .line 1359
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public playSoundEffectVolume(IF)V
    .locals 5
    .parameter "effectType"
    .parameter "volume"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1364
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1366
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IAudioService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1367
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1368
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1369
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1d

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1374
    return-void

    .line 1372
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public registerMediaButtonEventReceiverForCalls(Landroid/content/ComponentName;)V
    .locals 5
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1685
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1687
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IAudioService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1688
    if-eqz p1, :cond_0

    .line 1689
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1690
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1695
    :goto_0
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x30

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1698
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1700
    return-void

    .line 1693
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1698
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter "pi"
    .parameter "c"
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1638
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1639
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1641
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1642
    if-eqz p1, :cond_0

    .line 1643
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1644
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1649
    :goto_0
    if-eqz p2, :cond_1

    .line 1650
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1651
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1656
    :goto_1
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1657
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1658
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1661
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1662
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1664
    return-void

    .line 1647
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1661
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1662
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 1654
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public registerRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;Ljava/lang/String;)I
    .locals 6
    .parameter "mediaIntent"
    .parameter "rcClient"
    .parameter "callingPackageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1900
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1901
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1904
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IAudioService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1905
    if-eqz p1, :cond_0

    .line 1906
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1907
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1912
    :goto_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/media/IRemoteControlClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1913
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1914
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x39

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1915
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1916
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1919
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1922
    return v2

    .line 1910
    .end local v2           #_result:I
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1919
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 1912
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)Z
    .locals 6
    .parameter "rcd"
    .parameter "w"
    .parameter "h"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1726
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1727
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1730
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IAudioService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1731
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1732
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1733
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1734
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x32

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1735
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1736
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1739
    .local v2, _result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1740
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1742
    return v2

    .line 1731
    .end local v2           #_result:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1739
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1740
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public registerRemoteController(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)Z
    .locals 7
    .parameter "rcd"
    .parameter "w"
    .parameter "h"
    .parameter "listenerComp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1752
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1753
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1756
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.media.IAudioService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1757
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1758
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1759
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1760
    if-eqz p4, :cond_1

    .line 1761
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1762
    const/4 v4, 0x0

    invoke-virtual {p4, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1767
    :goto_1
    iget-object v4, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x33

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1768
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1769
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    .line 1772
    .local v2, _result:Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1773
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1775
    return v2

    .line 1757
    .end local v2           #_result:Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1765
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1772
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1773
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_2
    move v2, v3

    .line 1769
    goto :goto_2
.end method

.method public registerRemoteVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V
    .locals 5
    .parameter "rccId"
    .parameter "rvo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2015
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2017
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2018
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2019
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/media/IRemoteVolumeObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2020
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x3f

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2023
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2025
    return-void

    .line 2023
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public reloadAudioSettings()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1405
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1407
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IAudioService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1408
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1413
    return-void

    .line 1411
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V
    .locals 5
    .parameter "rcd"
    .parameter "w"
    .parameter "h"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1804
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1806
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1807
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1808
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1809
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1810
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x35

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1813
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1815
    return-void

    .line 1813
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V
    .locals 5
    .parameter "rcd"
    .parameter "wantsSync"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1830
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1832
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IAudioService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1833
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1834
    if-eqz p2, :cond_1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1835
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x36

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1838
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1840
    return-void

    .line 1834
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1838
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "mainStreamType"
    .parameter "durationHint"
    .parameter "cb"
    .parameter "fd"
    .parameter "clientId"
    .parameter "callingPackageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1525
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1526
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1529
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IAudioService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1530
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1531
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1532
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1533
    if-eqz p4, :cond_0

    invoke-interface {p4}, Landroid/media/IAudioFocusDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1534
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1535
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1536
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x28

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1537
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1538
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1541
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1542
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1544
    return v2

    .line 1533
    .end local v2           #_result:I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1541
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1542
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;I)I
    .locals 6
    .parameter "device"
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2141
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2142
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2145
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IAudioService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2146
    if-eqz p1, :cond_0

    .line 2147
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2148
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2153
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2154
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x47

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2155
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2156
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2159
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2160
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2162
    return v2

    .line 2151
    .end local v2           #_result:I
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2159
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2160
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public setBluetoothA2dpOn(Z)V
    .locals 5
    .parameter "on"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1493
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1494
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1496
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IAudioService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1497
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1498
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1499
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1502
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1505
    return-void

    .line 1502
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setBluetoothScoOn(Z)V
    .locals 5
    .parameter "on"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1461
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1462
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1464
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IAudioService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1465
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1466
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1467
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1470
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1473
    return-void

    .line 1470
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setMasterMute(ZILandroid/os/IBinder;)V
    .locals 5
    .parameter "state"
    .parameter "flags"
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1096
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1097
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1099
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IAudioService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1100
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1101
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1102
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1103
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1104
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1107
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1108
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1110
    return-void

    .line 1107
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1108
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setMasterVolume(IILjava/lang/String;)V
    .locals 5
    .parameter "index"
    .parameter "flags"
    .parameter "callingPackage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1027
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1028
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1030
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1031
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1032
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1033
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1034
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1035
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1038
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1039
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1041
    return-void

    .line 1038
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1039
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setMode(ILandroid/os/IBinder;)V
    .locals 5
    .parameter "mode"
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1319
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1320
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1322
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1323
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1324
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1325
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1326
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1329
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1332
    return-void

    .line 1329
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setPlaybackInfoForRcc(III)V
    .locals 5
    .parameter "rccId"
    .parameter "what"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1949
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1951
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IAudioService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1952
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1953
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1954
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1955
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x3b

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1958
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1960
    return-void

    .line 1958
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public setPlaybackStateForRcc(IIJF)V
    .locals 5
    .parameter "rccId"
    .parameter "state"
    .parameter "timeMs"
    .parameter "speed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1963
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1964
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1966
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1967
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1968
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1969
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 1970
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1971
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1972
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1975
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1976
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1978
    return-void

    .line 1975
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1976
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setRemoteControlClientPlaybackPosition(IJ)V
    .locals 5
    .parameter "generationId"
    .parameter "timeMs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1849
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1850
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1852
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1853
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1854
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1855
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x37

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1856
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1859
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1860
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1862
    return-void

    .line 1859
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1860
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setRemoteStreamVolume(I)V
    .locals 5
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1015
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1017
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IAudioService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1018
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1019
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1022
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1024
    return-void

    .line 1022
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public setRingerMode(I)V
    .locals 5
    .parameter "ringerMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1235
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1236
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1238
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1239
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1240
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1241
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1244
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1247
    return-void

    .line 1244
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setRingtonePlayer(Landroid/media/IRingtonePlayer;)V
    .locals 5
    .parameter "player"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2075
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2076
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2078
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2079
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/media/IRingtonePlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2080
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x43

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2081
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2084
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2085
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2087
    return-void

    .line 2079
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 2084
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2085
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 5
    .parameter "on"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1429
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1430
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1432
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IAudioService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1433
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1434
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1435
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1438
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1441
    return-void

    .line 1438
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setStreamMute(IZLandroid/os/IBinder;)V
    .locals 5
    .parameter "streamType"
    .parameter "state"
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1061
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1062
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1064
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IAudioService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1065
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1066
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1067
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1068
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1069
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1072
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1075
    return-void

    .line 1072
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setStreamSolo(IZLandroid/os/IBinder;)V
    .locals 5
    .parameter "streamType"
    .parameter "state"
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1044
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1045
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1047
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IAudioService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1048
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1049
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1050
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1051
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1052
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1055
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1056
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1058
    return-void

    .line 1055
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1056
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setStreamVolume(IIILjava/lang/String;)V
    .locals 5
    .parameter "streamType"
    .parameter "index"
    .parameter "flags"
    .parameter "callingPackage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 997
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 998
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1000
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1001
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1002
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1003
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1004
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1005
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1006
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1009
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1010
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1012
    return-void

    .line 1009
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1010
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setVibrateInSilent(I)V
    .locals 5
    .parameter "vibrate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2206
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2207
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2209
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2210
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2211
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2212
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2215
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2216
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2218
    return-void

    .line 2215
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2216
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setVibrateSetting(II)V
    .locals 5
    .parameter "vibrateType"
    .parameter "vibrateSetting"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1267
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1268
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1270
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1271
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1272
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1273
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1274
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1277
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1280
    return-void

    .line 1277
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setWiredDeviceConnectionState(IILjava/lang/String;)V
    .locals 5
    .parameter "device"
    .parameter "state"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2124
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2125
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2127
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2128
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2129
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2130
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2131
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x46

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2132
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2135
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2138
    return-void

    .line 2135
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public shouldVibrate(I)Z
    .locals 6
    .parameter "vibrateType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1301
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1302
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1305
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IAudioService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1306
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1307
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x19

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1308
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1309
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1312
    .local v2, _result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1315
    return v2

    .line 1312
    .end local v2           #_result:Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public startBluetoothSco(Landroid/os/IBinder;I)V
    .locals 5
    .parameter "cb"
    .parameter "targetSdkVersion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2028
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2029
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2031
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2032
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2033
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2034
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2035
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2038
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2039
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2041
    return-void

    .line 2038
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2039
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    .locals 6
    .parameter "observer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2166
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2167
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2170
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IAudioService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2171
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/media/IAudioRoutesObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2172
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x48

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2173
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2174
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 2175
    sget-object v3, Landroid/media/AudioRoutesInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioRoutesInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2182
    .local v2, _result:Landroid/media/AudioRoutesInfo;
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2185
    return-object v2

    .line 2171
    .end local v2           #_result:Landroid/media/AudioRoutesInfo;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 2178
    :cond_1
    const/4 v2, 0x0

    .restart local v2       #_result:Landroid/media/AudioRoutesInfo;
    goto :goto_1

    .line 2182
    .end local v2           #_result:Landroid/media/AudioRoutesInfo;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public stopBluetoothSco(Landroid/os/IBinder;)V
    .locals 5
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2044
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2045
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2047
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2048
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2049
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x41

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2050
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2053
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2056
    return-void

    .line 2053
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public unloadSoundEffects()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1394
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1396
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IAudioService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1397
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1f

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1402
    return-void

    .line 1400
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public unregisterAudioFocusClient(Ljava/lang/String;)V
    .locals 5
    .parameter "clientId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1567
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1568
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1570
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1571
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1572
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1573
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1576
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1579
    return-void

    .line 1576
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public unregisterMediaButtonEventReceiverForCalls()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1703
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1705
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IAudioService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1706
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x31

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1709
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1711
    return-void

    .line 1709
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V
    .locals 5
    .parameter "pi"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1667
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1669
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IAudioService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1670
    if-eqz p1, :cond_0

    .line 1671
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1672
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1677
    :goto_0
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2f

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1680
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1682
    return-void

    .line 1675
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1680
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public unregisterRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;)V
    .locals 5
    .parameter "mediaIntent"
    .parameter "rcClient"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1930
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1932
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1933
    if-eqz p1, :cond_1

    .line 1934
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1935
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1940
    :goto_0
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/media/IRemoteControlClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1941
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x3a

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1944
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1946
    return-void

    .line 1938
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1944
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .locals 5
    .parameter "rcd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1784
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1786
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1787
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1788
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x34

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1791
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1793
    return-void

    .line 1791
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public updateRemoteControlClientMetadata(IILandroid/media/Rating;)V
    .locals 5
    .parameter "generationId"
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1873
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1874
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1876
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1877
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1878
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1879
    if-eqz p3, :cond_0

    .line 1880
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1881
    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2}, Landroid/media/Rating;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1886
    :goto_0
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x38

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1887
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1890
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1891
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1893
    return-void

    .line 1884
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1890
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1891
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
