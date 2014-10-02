.class public Lcom/viber/jni/CAddressBookInfo;
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
            "Lcom/viber/jni/CAddressBookInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final _id:J

.field private final clientName:Ljava/lang/String;

.field private final clientPhones:[Ljava/lang/String;

.field private final clientSortName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/viber/jni/CAddressBookInfo$1;

    invoke-direct {v0}, Lcom/viber/jni/CAddressBookInfo$1;-><init>()V

    sput-object v0, Lcom/viber/jni/CAddressBookInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p3, p0, Lcom/viber/jni/CAddressBookInfo;->clientName:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/viber/jni/CAddressBookInfo;->clientPhones:[Ljava/lang/String;

    .line 32
    iput-object p5, p0, Lcom/viber/jni/CAddressBookInfo;->clientSortName:Ljava/lang/String;

    .line 33
    iput-wide p1, p0, Lcom/viber/jni/CAddressBookInfo;->_id:J

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/jni/CAddressBookInfo;->clientName:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/jni/CAddressBookInfo;->clientSortName:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 40
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/viber/jni/CAddressBookInfo;->clientPhones:[Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/viber/jni/CAddressBookInfo;->clientPhones:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/jni/CAddressBookInfo;->_id:J

    .line 43
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public getClientName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/viber/jni/CAddressBookInfo;->clientName:Ljava/lang/String;

    return-object v0
.end method

.method public getClientPhones()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/viber/jni/CAddressBookInfo;->clientPhones:[Ljava/lang/String;

    return-object v0
.end method

.method public getClientSortName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/viber/jni/CAddressBookInfo;->clientSortName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/viber/jni/CAddressBookInfo;->_id:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CAddressBookInfo [clientName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/jni/CAddressBookInfo;->clientName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", clientPhones="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/jni/CAddressBookInfo;->clientPhones:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", clientSortName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/jni/CAddressBookInfo;->clientSortName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .line 70
    iget-object v0, p0, Lcom/viber/jni/CAddressBookInfo;->clientName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/viber/jni/CAddressBookInfo;->clientSortName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/viber/jni/CAddressBookInfo;->clientPhones:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget-object v0, p0, Lcom/viber/jni/CAddressBookInfo;->clientPhones:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 74
    iget-wide v0, p0, Lcom/viber/jni/CAddressBookInfo;->_id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 75
    return-void
.end method
