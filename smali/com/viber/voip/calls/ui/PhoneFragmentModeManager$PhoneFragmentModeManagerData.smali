.class public Lcom/viber/voip/calls/ui/PhoneFragmentModeManager$PhoneFragmentModeManagerData;
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
            "Lcom/viber/voip/calls/ui/PhoneFragmentModeManager$PhoneFragmentModeManagerData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Z

.field private b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/viber/voip/calls/ui/o;

    invoke-direct {v0}, Lcom/viber/voip/calls/ui/o;-><init>()V

    sput-object v0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager$PhoneFragmentModeManagerData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager$PhoneFragmentModeManagerData;->b:Ljava/util/LinkedList;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager$PhoneFragmentModeManagerData;->a:Z

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 58
    :goto_1
    if-ge v1, v0, :cond_1

    .line 59
    iget-object v2, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager$PhoneFragmentModeManagerData;->b:Ljava/util/LinkedList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 55
    goto :goto_0

    .line 61
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/viber/voip/calls/ui/m;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager$PhoneFragmentModeManagerData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager$PhoneFragmentModeManagerData;->b:Ljava/util/LinkedList;

    .line 50
    invoke-virtual {p1}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager$PhoneFragmentModeManagerData;->a:Z

    .line 51
    invoke-virtual {p1}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->f()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager$PhoneFragmentModeManagerData;->b:Ljava/util/LinkedList;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;Lcom/viber/voip/calls/ui/m;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager$PhoneFragmentModeManagerData;-><init>(Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/calls/ui/PhoneFragmentModeManager$PhoneFragmentModeManagerData;)Z
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager$PhoneFragmentModeManagerData;->a:Z

    return v0
.end method

.method static synthetic b(Lcom/viber/voip/calls/ui/PhoneFragmentModeManager$PhoneFragmentModeManagerData;)Ljava/util/LinkedList;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager$PhoneFragmentModeManagerData;->b:Ljava/util/LinkedList;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager$PhoneFragmentModeManagerData;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager$PhoneFragmentModeManagerData;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager$PhoneFragmentModeManagerData;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 68
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 70
    :cond_1
    return-void
.end method
