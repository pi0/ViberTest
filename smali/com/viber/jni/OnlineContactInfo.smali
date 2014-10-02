.class public Lcom/viber/jni/OnlineContactInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/viber/jni/OnlineContactInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public contactPhone:Ljava/lang/String;

.field public isOnLine:Z

.field public time:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/viber/jni/OnlineContactInfo$1;

    invoke-direct {v0}, Lcom/viber/jni/OnlineContactInfo$1;-><init>()V

    sput-object v0, Lcom/viber/jni/OnlineContactInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/viber/jni/OnlineContactInfo;->contactPhone:Ljava/lang/String;

    .line 8
    iput-boolean v1, p0, Lcom/viber/jni/OnlineContactInfo;->isOnLine:Z

    .line 9
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/viber/jni/OnlineContactInfo;->time:J

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/viber/jni/OnlineContactInfo;->contactPhone:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/viber/jni/OnlineContactInfo;->isOnLine:Z

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/jni/OnlineContactInfo;->time:J

    .line 22
    return-void

    :cond_0
    move v0, v1

    .line 20
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;ZJ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/viber/jni/OnlineContactInfo;->contactPhone:Ljava/lang/String;

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/jni/OnlineContactInfo;->isOnLine:Z

    .line 9
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/viber/jni/OnlineContactInfo;->time:J

    .line 13
    iput-object p1, p0, Lcom/viber/jni/OnlineContactInfo;->contactPhone:Ljava/lang/String;

    .line 14
    iput-boolean p2, p0, Lcom/viber/jni/OnlineContactInfo;->isOnLine:Z

    .line 15
    iput-wide p3, p0, Lcom/viber/jni/OnlineContactInfo;->time:J

    .line 16
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "OnlineContactInfo contactPhone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/jni/OnlineContactInfo;->contactPhone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " isOnLine:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/jni/OnlineContactInfo;->isOnLine:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/jni/OnlineContactInfo;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/viber/jni/OnlineContactInfo;->contactPhone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-boolean v0, p0, Lcom/viber/jni/OnlineContactInfo;->isOnLine:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-wide v0, p0, Lcom/viber/jni/OnlineContactInfo;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 48
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
