.class public Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;
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
            "Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:J

.field private final b:J

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Landroid/net/Uri;

.field private final f:Landroid/net/Uri;

.field private final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 218
    new-instance v0, Lcom/viber/voip/u;

    invoke-direct {v0}, Lcom/viber/voip/u;-><init>()V

    sput-object v0, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->a:J

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->b:J

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->c:Ljava/lang/String;

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->d:Ljava/lang/String;

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->g:Z

    .line 284
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 285
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->f:Landroid/net/Uri;

    .line 286
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->e:Landroid/net/Uri;

    .line 287
    return-void

    .line 283
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/viber/voip/contacts/b/b;)V
    .locals 3
    .parameter

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    invoke-interface {p1}, Lcom/viber/voip/contacts/b/b;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->a:J

    .line 246
    invoke-interface {p1}, Lcom/viber/voip/contacts/b/b;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->b:J

    .line 247
    invoke-interface {p1}, Lcom/viber/voip/contacts/b/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->c:Ljava/lang/String;

    .line 248
    invoke-interface {p1}, Lcom/viber/voip/contacts/b/b;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->d:Ljava/lang/String;

    .line 249
    iget-wide v0, p0, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->a:J

    iget-object v2, p0, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->e:Landroid/net/Uri;

    .line 250
    invoke-interface {p1}, Lcom/viber/voip/contacts/b/b;->b()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->f:Landroid/net/Uri;

    .line 251
    iget-object v0, p0, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->f:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->f:Landroid/net/Uri;

    invoke-interface {p1}, Lcom/viber/voip/contacts/b/b;->k()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->g:Z

    .line 252
    return-void

    .line 251
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput-object p1, p0, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->c:Ljava/lang/String;

    .line 264
    iput-object p2, p0, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->f:Landroid/net/Uri;

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->g:Z

    .line 266
    iput-object v1, p0, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->d:Ljava/lang/String;

    .line 267
    iput-object v1, p0, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->e:Landroid/net/Uri;

    .line 268
    iput-wide v2, p0, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->a:J

    .line 269
    iput-wide v2, p0, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->b:J

    .line 270
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    .prologue
    .line 293
    iget-wide v0, p0, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 297
    iget-wide v0, p0, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->a:J

    return-wide v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 301
    iget-wide v0, p0, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->b:J

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->c:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->f:Landroid/net/Uri;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->g:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    const-string/jumbo v1, "ContactDetails [displayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", lookupUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->e:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", photoUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->f:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", isViberPhoto="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 331
    iget-wide v0, p0, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 332
    iget-wide v0, p0, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 333
    iget-object v0, p0, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 335
    iget-boolean v0, p0, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    iget-object v0, p0, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->f:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 337
    iget-object v0, p0, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->e:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 338
    return-void

    .line 335
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
