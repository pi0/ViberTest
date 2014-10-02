.class public Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;
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
            "Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field protected b:Ljava/lang/String;

.field protected c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/viber/voip/messages/ui/dl;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/viber/voip/messages/ui/dm;

    invoke-direct {v0}, Lcom/viber/voip/messages/ui/dm;-><init>()V

    sput-object v0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;->c:Ljava/util/Map;

    .line 101
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 10
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;->c:Ljava/util/Map;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;->a:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;->b:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move v5, v2

    .line 108
    :goto_0
    if-ge v5, v6, :cond_3

    .line 109
    iget-object v7, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;->c:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    new-instance v9, Lcom/viber/voip/messages/ui/dl;

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
    invoke-direct {v9, v0, v3, v4}, Lcom/viber/voip/messages/ui/dl;-><init>(ZZZ)V

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 109
    goto :goto_1

    :cond_1
    move v3, v2

    goto :goto_2

    :cond_2
    move v4, v2

    goto :goto_3

    .line 111
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_4

    :goto_4
    iput-boolean v1, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;->d:Z

    .line 112
    return-void

    :cond_4
    move v1, v2

    .line 111
    goto :goto_4
.end method

.method protected constructor <init>(Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;)V
    .locals 1
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;->c:Ljava/util/Map;

    .line 91
    invoke-virtual {p1}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->j()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;->a:I

    .line 92
    invoke-virtual {p1}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;->b:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->a()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;->c:Ljava/util/Map;

    .line 94
    invoke-static {p1}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->a(Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;->d:Z

    .line 96
    invoke-virtual {p1}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->x()V

    .line 97
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 139
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;->b:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 116
    iget v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;->c:Ljava/util/Map;

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

    .line 120
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 121
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/dl;

    .line 122
    iget-boolean v1, v0, Lcom/viber/voip/messages/ui/dl;->a:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_1
    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 123
    iget-boolean v1, v0, Lcom/viber/voip/messages/ui/dl;->b:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_2
    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 124
    iget-boolean v0, v0, Lcom/viber/voip/messages/ui/dl;->c:Z

    if-eqz v0, :cond_2

    move v0, v2

    :goto_3
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    :cond_0
    move v1, v3

    .line 122
    goto :goto_1

    :cond_1
    move v1, v3

    .line 123
    goto :goto_2

    :cond_2
    move v0, v3

    .line 124
    goto :goto_3

    .line 126
    :cond_3
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;->d:Z

    if-eqz v0, :cond_4

    :goto_4
    int-to-byte v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 127
    return-void

    :cond_4
    move v2, v3

    .line 126
    goto :goto_4
.end method
