.class public Lcom/viber/voip/messages/ui/PublicGroupsFragmentModeManager$PublicGroupsFragmentModeManagerData;
.super Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/viber/voip/messages/ui/PublicGroupsFragmentModeManager$PublicGroupsFragmentModeManagerData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/viber/voip/messages/ui/ef;

    invoke-direct {v0}, Lcom/viber/voip/messages/ui/ef;-><init>()V

    sput-object v0, Lcom/viber/voip/messages/ui/PublicGroupsFragmentModeManager$PublicGroupsFragmentModeManagerData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 11
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 71
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/ui/PublicGroupsFragmentModeManager$PublicGroupsFragmentModeManagerData;->a:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/PublicGroupsFragmentModeManager$PublicGroupsFragmentModeManagerData;->b:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move v5, v2

    .line 76
    :goto_0
    if-ge v5, v6, :cond_3

    .line 77
    iget-object v7, p0, Lcom/viber/voip/messages/ui/PublicGroupsFragmentModeManager$PublicGroupsFragmentModeManagerData;->c:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    new-instance v9, Lcom/viber/voip/messages/ui/ee;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v1, :cond_1

    move v3, v1

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-ne v4, v1, :cond_2

    move v4, v1

    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-direct {v9, v0, v3, v4, v10}, Lcom/viber/voip/messages/ui/ee;-><init>(ZZZI)V

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 77
    goto :goto_1

    :cond_1
    move v3, v2

    goto :goto_2

    :cond_2
    move v4, v2

    goto :goto_3

    .line 80
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_4

    :goto_4
    iput-boolean v1, p0, Lcom/viber/voip/messages/ui/PublicGroupsFragmentModeManager$PublicGroupsFragmentModeManagerData;->d:Z

    .line 81
    return-void

    :cond_4
    move v1, v2

    .line 80
    goto :goto_4
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/viber/voip/messages/ui/ed;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/PublicGroupsFragmentModeManager$PublicGroupsFragmentModeManagerData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method protected constructor <init>(Lcom/viber/voip/messages/ui/PublicGroupsFragmentModeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;-><init>(Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;)V

    .line 57
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 85
    iget v0, p0, Lcom/viber/voip/messages/ui/PublicGroupsFragmentModeManager$PublicGroupsFragmentModeManagerData;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-object v0, p0, Lcom/viber/voip/messages/ui/PublicGroupsFragmentModeManager$PublicGroupsFragmentModeManagerData;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/viber/voip/messages/ui/PublicGroupsFragmentModeManager$PublicGroupsFragmentModeManagerData;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget-object v0, p0, Lcom/viber/voip/messages/ui/PublicGroupsFragmentModeManager$PublicGroupsFragmentModeManagerData;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 89
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 90
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/ee;

    .line 91
    iget-boolean v1, v0, Lcom/viber/voip/messages/ui/ee;->a:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_1
    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 92
    iget-boolean v1, v0, Lcom/viber/voip/messages/ui/ee;->b:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_2
    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 93
    iget-boolean v1, v0, Lcom/viber/voip/messages/ui/ee;->c:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_3
    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 94
    invoke-static {v0}, Lcom/viber/voip/messages/ui/ee;->a(Lcom/viber/voip/messages/ui/ee;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    move v1, v3

    .line 91
    goto :goto_1

    :cond_1
    move v1, v3

    .line 92
    goto :goto_2

    :cond_2
    move v1, v3

    .line 93
    goto :goto_3

    .line 96
    :cond_3
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/PublicGroupsFragmentModeManager$PublicGroupsFragmentModeManagerData;->d:Z

    if-eqz v0, :cond_4

    :goto_4
    int-to-byte v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 97
    return-void

    :cond_4
    move v2, v3

    .line 96
    goto :goto_4
.end method
