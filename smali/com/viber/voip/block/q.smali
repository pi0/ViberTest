.class public Lcom/viber/voip/block/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field private b:J

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Ljava/lang/String;

.field private f:J

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "blockednumbers._id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "blockednumbers.canonized_number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "blockednumbers.blocked_date"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "GROUP_CONCAT(phonebookcontact.display_name, \', \')"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "phonebookcontact._id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "phonebookcontact.contact_lookup_key"

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/voip/block/q;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p0, p1}, Lcom/viber/voip/block/q;->a(Lcom/viber/voip/block/q;Landroid/database/Cursor;)V

    .line 39
    return-void
.end method

.method private static a(Lcom/viber/voip/block/q;Landroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/block/q;->b:J

    .line 43
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/block/q;->c:Ljava/lang/String;

    .line 44
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/block/q;->d:J

    .line 45
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/block/q;->e:Ljava/lang/String;

    .line 46
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/block/q;->f:J

    .line 47
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/block/q;->g:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/viber/voip/block/q;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/viber/voip/block/q;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/viber/voip/block/q;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
