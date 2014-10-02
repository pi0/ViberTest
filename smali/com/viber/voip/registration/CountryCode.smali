.class public Lcom/viber/voip/registration/CountryCode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/viber/voip/registration/CountryCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/viber/voip/registration/CountryCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/viber/voip/registration/ap;

    invoke-direct {v0}, Lcom/viber/voip/registration/ap;-><init>()V

    sput-object v0, Lcom/viber/voip/registration/CountryCode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/registration/CountryCode;->b:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/registration/CountryCode;->a:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/registration/CountryCode;->c:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/registration/CountryCode;->d:Ljava/lang/String;

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/viber/voip/registration/ap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/viber/voip/registration/CountryCode;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/viber/voip/registration/CountryCode;->b:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/viber/voip/registration/CountryCode;->a:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/viber/voip/registration/CountryCode;->c:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/viber/voip/registration/CountryCode;->d:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/registration/CountryCode;)I
    .locals 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/viber/voip/registration/CountryCode;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/viber/voip/registration/CountryCode;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 31
    iget-object v0, p0, Lcom/viber/voip/registration/CountryCode;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/registration/CountryCode;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 32
    iget-object v0, p0, Lcom/viber/voip/registration/CountryCode;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 34
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/viber/voip/registration/CountryCode;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/viber/voip/registration/CountryCode;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/viber/voip/registration/CountryCode;->c:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 10
    check-cast p1, Lcom/viber/voip/registration/CountryCode;

    invoke-virtual {p0, p1}, Lcom/viber/voip/registration/CountryCode;->a(Lcom/viber/voip/registration/CountryCode;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 74
    if-ne p0, p1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 79
    goto :goto_0

    .line 80
    :cond_3
    check-cast p1, Lcom/viber/voip/registration/CountryCode;

    .line 81
    iget-object v2, p0, Lcom/viber/voip/registration/CountryCode;->b:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 82
    iget-object v2, p1, Lcom/viber/voip/registration/CountryCode;->b:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 83
    goto :goto_0

    .line 84
    :cond_4
    iget-object v2, p0, Lcom/viber/voip/registration/CountryCode;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/viber/voip/registration/CountryCode;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 85
    goto :goto_0

    .line 86
    :cond_5
    iget-object v2, p0, Lcom/viber/voip/registration/CountryCode;->a:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 87
    iget-object v2, p1, Lcom/viber/voip/registration/CountryCode;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 88
    goto :goto_0

    .line 89
    :cond_6
    iget-object v2, p0, Lcom/viber/voip/registration/CountryCode;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/viber/voip/registration/CountryCode;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 90
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 65
    .line 67
    iget-object v0, p0, Lcom/viber/voip/registration/CountryCode;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 68
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/viber/voip/registration/CountryCode;->a:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 69
    return v0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/registration/CountryCode;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/registration/CountryCode;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CountryCode{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "code=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/registration/CountryCode;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", iddCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/registration/CountryCode;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", localCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/registration/CountryCode;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/registration/CountryCode;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/viber/voip/registration/CountryCode;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/viber/voip/registration/CountryCode;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/viber/voip/registration/CountryCode;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/viber/voip/registration/CountryCode;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return-void
.end method
