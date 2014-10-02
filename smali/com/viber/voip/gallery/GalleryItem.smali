.class public Lcom/viber/voip/gallery/GalleryItem;
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
            "Lcom/viber/voip/gallery/GalleryItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/net/Uri;

.field private b:Landroid/net/Uri;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/viber/voip/gallery/a;

    invoke-direct {v0}, Lcom/viber/voip/gallery/a;-><init>()V

    sput-object v0, Lcom/viber/voip/gallery/GalleryItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 36
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/viber/voip/gallery/GalleryItem;->a:Landroid/net/Uri;

    .line 37
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/viber/voip/gallery/GalleryItem;->b:Landroid/net/Uri;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/gallery/GalleryItem;->c:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static a(Landroid/net/Uri;)Lcom/viber/voip/gallery/GalleryItem;
    .locals 1
    .parameter

    .prologue
    .line 42
    new-instance v0, Lcom/viber/voip/gallery/GalleryItem;

    invoke-direct {v0}, Lcom/viber/voip/gallery/GalleryItem;-><init>()V

    .line 43
    iput-object p0, v0, Lcom/viber/voip/gallery/GalleryItem;->a:Landroid/net/Uri;

    .line 44
    iput-object p0, v0, Lcom/viber/voip/gallery/GalleryItem;->b:Landroid/net/Uri;

    .line 45
    return-object v0
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/viber/voip/gallery/GalleryItem;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/viber/voip/gallery/GalleryItem;->c:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/viber/voip/gallery/GalleryItem;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public b(Landroid/net/Uri;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/viber/voip/gallery/GalleryItem;->a:Landroid/net/Uri;

    .line 54
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/viber/voip/gallery/GalleryItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/viber/voip/gallery/GalleryItem;->a:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/gallery/GalleryItem;->a:Landroid/net/Uri;

    iget-object v1, p0, Lcom/viber/voip/gallery/GalleryItem;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 107
    if-ne p0, p1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 108
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 109
    :cond_2
    instance-of v2, p1, Lcom/viber/voip/gallery/GalleryItem;

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 110
    :cond_3
    check-cast p1, Lcom/viber/voip/gallery/GalleryItem;

    .line 111
    iget-object v2, p0, Lcom/viber/voip/gallery/GalleryItem;->b:Landroid/net/Uri;

    if-nez v2, :cond_4

    .line 112
    iget-object v2, p1, Lcom/viber/voip/gallery/GalleryItem;->b:Landroid/net/Uri;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 113
    :cond_4
    iget-object v2, p0, Lcom/viber/voip/gallery/GalleryItem;->b:Landroid/net/Uri;

    iget-object v3, p1, Lcom/viber/voip/gallery/GalleryItem;->b:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 98
    .line 100
    iget-object v0, p0, Lcom/viber/voip/gallery/GalleryItem;->b:Landroid/net/Uri;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 102
    return v0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/gallery/GalleryItem;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    const-string/jumbo v1, "GalleryItem [imageUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/gallery/GalleryItem;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", originalUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/gallery/GalleryItem;->b:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", description="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/gallery/GalleryItem;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 83
    iget-object v0, p0, Lcom/viber/voip/gallery/GalleryItem;->a:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 84
    iget-object v0, p0, Lcom/viber/voip/gallery/GalleryItem;->b:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 85
    iget-object v0, p0, Lcom/viber/voip/gallery/GalleryItem;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    return-void
.end method
