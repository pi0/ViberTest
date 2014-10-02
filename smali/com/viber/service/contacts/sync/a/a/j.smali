.class public interface abstract Lcom/viber/service/contacts/sync/a/a/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:[Ljava/lang/String;

.field public static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 627
    sget-object v0, Lcom/viber/provider/contacts/g;->a:Landroid/net/Uri;

    sput-object v0, Lcom/viber/service/contacts/sync/a/a/j;->a:Landroid/net/Uri;

    .line 629
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "canonized_number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/service/contacts/sync/a/a/j;->b:[Ljava/lang/String;

    .line 632
    const/4 v0, 0x0

    sput-object v0, Lcom/viber/service/contacts/sync/a/a/j;->c:Ljava/lang/String;

    return-void
.end method
