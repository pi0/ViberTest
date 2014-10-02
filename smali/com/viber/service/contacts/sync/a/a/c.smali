.class interface abstract Lcom/viber/service/contacts/sync/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 719
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/viber/service/contacts/sync/a/a/c;->a:Landroid/net/Uri;

    .line 721
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "sourceid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/service/contacts/sync/a/a/c;->b:[Ljava/lang/String;

    return-void
.end method
