.class interface abstract Lcom/viber/service/contacts/sync/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 141
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/viber/service/contacts/sync/c/d;->a:Landroid/net/Uri;

    .line 143
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "mimetype"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/service/contacts/sync/c/d;->b:[Ljava/lang/String;

    return-void
.end method
