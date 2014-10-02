.class public Lcom/viber/voip/contacts/c/d/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/viber/voip/ViberApplication;

.field private c:Lcom/viber/voip/contacts/c/e/b;

.field private d:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

.field private e:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

.field private f:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

.field private g:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-class v0, Lcom/viber/voip/contacts/c/d/aa;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/c/d/aa;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/ViberApplication;)V
    .locals 2
    .parameter

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/viber/voip/contacts/c/d/aa;->b:Lcom/viber/voip/ViberApplication;

    .line 123
    invoke-static {p1}, Lcom/viber/voip/contacts/c/e/b;->a(Landroid/content/Context;)Lcom/viber/voip/contacts/c/e/b;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/c/d/aa;->c:Lcom/viber/voip/contacts/c/e/b;

    .line 124
    new-instance v0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    sget-object v1, Lcom/viber/voip/contacts/b/b/e;->b:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    invoke-direct {v0, v1}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;-><init>(Lcom/viber/voip/messages/orm/creator/Creator;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/d/aa;->d:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    .line 125
    new-instance v0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    sget-object v1, Lcom/viber/voip/contacts/b/b/a/o;->a:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    invoke-direct {v0, v1}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;-><init>(Lcom/viber/voip/messages/orm/creator/Creator;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/d/aa;->f:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    .line 126
    new-instance v0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    sget-object v1, Lcom/viber/voip/contacts/b/b/e;->c:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    invoke-direct {v0, v1}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;-><init>(Lcom/viber/voip/messages/orm/creator/Creator;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/d/aa;->e:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    .line 127
    new-instance v0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    sget-object v1, Lcom/viber/voip/contacts/b/b/d;->a:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    invoke-direct {v0, v1}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;-><init>(Lcom/viber/voip/messages/orm/creator/Creator;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/d/aa;->g:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    .line 128
    return-void
.end method

.method private a(JLjava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 262
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    invoke-static {p1, p2, p3}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 265
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/contacts/c/d/aa;JLjava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/contacts/c/d/aa;->a(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;J)Lcom/viber/voip/contacts/b/b;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 609
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 610
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/contacts/b/b/e;->b:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/creator/CreatorHelper;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/contacts/b/b/e;->b:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    invoke-virtual {v2}, Lcom/viber/voip/messages/orm/creator/CreatorHelper;->getProjections()[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "phonebookcontact._id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 614
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 615
    sget-object v1, Lcom/viber/voip/contacts/b/b/e;->b:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/orm/creator/CreatorHelper;->createInstance(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b;

    .line 620
    :goto_0
    return-object v0

    .line 618
    :cond_0
    invoke-static {v0}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    :cond_1
    move-object v0, v4

    .line 620
    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/contacts/c/d/aa;)Lcom/viber/voip/contacts/c/e/b;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/aa;->c:Lcom/viber/voip/contacts/c/e/b;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/viber/voip/contacts/b/b;
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 170
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    :goto_0
    return-object v0

    .line 174
    :cond_0
    new-instance v2, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    sget-object v3, Lcom/viber/voip/contacts/b/b/e;->b:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    invoke-direct {v2, v3}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;-><init>(Lcom/viber/voip/messages/orm/creator/Creator;)V

    .line 175
    const-string/jumbo v3, "phonebookcontact._id IN (SELECT phonebookdata.contact_id FROM phonebookdata WHERE phonebookdata.mime_type=0 AND (phonebookdata.data1=? OR phonebookdata.data2=?))"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object v1, v4, v6

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-virtual {v2, v0, v3, v4}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->fillCursorSync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 176
    invoke-virtual {v2, v6}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->getEntity(I)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b;

    .line 177
    invoke-virtual {v2}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->closeCursor()Z

    goto :goto_0
.end method

.method public a()V
    .locals 5

    .prologue
    .line 600
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 601
    sget-object v1, Lcom/viber/provider/contacts/g;->a:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 602
    sget-object v1, Lcom/viber/provider/contacts/d;->a:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    sget-object v1, Lcom/viber/provider/contacts/f;->a:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    sget-object v1, Lcom/viber/provider/contacts/e;->a:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/aa;->c:Lcom/viber/voip/contacts/c/e/b;

    const/4 v2, 0x0

    const-string/jumbo v3, "com.viber.provider.vibercontacts"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/viber/voip/contacts/c/e/b;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/util/List;)V

    .line 606
    return-void
.end method

.method public a(JILcom/viber/voip/contacts/c/d/ap;)V
    .locals 17
    .parameter
    .parameter
    .parameter

    .prologue
    .line 476
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/viber/voip/contacts/c/d/aa;->c:Lcom/viber/voip/contacts/c/e/b;

    const/16 v13, 0x630

    const/4 v14, 0x0

    sget-object v15, Lcom/viber/provider/contacts/d;->a:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v1, 0x0

    const-string/jumbo v2, "flags"

    aput-object v2, v16, v1

    const-string/jumbo v7, "_id=?"

    const/4 v1, 0x1

    new-array v8, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v1

    const/4 v9, 0x0

    new-instance v1, Lcom/viber/voip/contacts/c/d/af;

    move-object/from16 v2, p0

    move/from16 v3, p3

    move-wide/from16 v4, p1

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/viber/voip/contacts/c/d/af;-><init>(Lcom/viber/voip/contacts/c/d/aa;IJLcom/viber/voip/contacts/c/d/ap;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, v10

    move v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    move-object v10, v1

    invoke-virtual/range {v2 .. v12}, Lcom/viber/voip/contacts/c/e/b;->a(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/fl;ZZ)V

    .line 508
    return-void
.end method

.method public a(JJLjava/lang/String;ZLcom/viber/voip/contacts/c/d/ap;)V
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 132
    new-instance v10, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v10, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 133
    const-string/jumbo v3, "starred"

    if-eqz p6, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/viber/voip/contacts/c/d/aa;->c:Lcom/viber/voip/contacts/c/e/b;

    const/16 v14, 0x630

    sget-object v15, Lcom/viber/provider/contacts/d;->a:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/4 v9, 0x0

    new-instance v2, Lcom/viber/voip/contacts/c/d/ab;

    move-object/from16 v3, p0

    move-object/from16 v4, p7

    move/from16 v5, p6

    move-wide/from16 v6, p1

    move-object/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/viber/voip/contacts/c/d/ab;-><init>(Lcom/viber/voip/contacts/c/d/aa;Lcom/viber/voip/contacts/c/d/ap;ZJLjava/lang/String;)V

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v3, v13

    move v4, v14

    move-object/from16 v5, p5

    move-object v6, v15

    move-object v7, v10

    move-object/from16 v8, v16

    move-object v10, v2

    invoke-virtual/range {v3 .. v12}, Lcom/viber/voip/contacts/c/e/b;->a(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Lcom/viber/voip/util/fn;ZZ)V

    .line 149
    return-void

    .line 133
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public a(JLcom/viber/voip/contacts/c/d/ap;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 388
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 389
    const-string/jumbo v0, "recently_joined_date"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 390
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/aa;->c:Lcom/viber/voip/contacts/c/e/b;

    sget-object v3, Lcom/viber/provider/contacts/d;->a:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/viber/voip/contacts/c/d/ao;

    invoke-direct {v7, p0, p3}, Lcom/viber/voip/contacts/c/d/ao;-><init>(Lcom/viber/voip/contacts/c/d/aa;Lcom/viber/voip/contacts/c/d/ap;)V

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/viber/voip/contacts/c/e/b;->a(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Lcom/viber/voip/util/fn;)V

    .line 400
    return-void
.end method

.method public a(JLcom/viber/voip/contacts/c/d/h;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 272
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/aa;->d:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/aa;->c:Lcom/viber/voip/contacts/c/e/b;

    new-instance v2, Lcom/viber/voip/contacts/c/d/am;

    invoke-direct {v2, p0, p3}, Lcom/viber/voip/contacts/c/d/am;-><init>(Lcom/viber/voip/contacts/c/d/aa;Lcom/viber/voip/contacts/c/d/h;)V

    const-string/jumbo v4, "phonebookcontact._id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->fillCursor(Lcom/viber/voip/util/fe;Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;ILjava/lang/String;[Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public a(JLjava/lang/String;Lcom/viber/voip/contacts/c/d/ap;)V
    .locals 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    iget-object v7, p0, Lcom/viber/voip/contacts/c/d/aa;->c:Lcom/viber/voip/contacts/c/e/b;

    const/16 v10, 0x635

    sget-object v11, Lcom/viber/provider/contacts/e;->a:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "contact_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v6, 0x0

    new-instance v0, Lcom/viber/voip/contacts/c/d/aj;

    move-object v1, p0

    move-object/from16 v2, p4

    move-wide v3, p1

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/contacts/c/d/aj;-><init>(Lcom/viber/voip/contacts/c/d/aa;Lcom/viber/voip/contacts/c/d/ap;JLjava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v1, v7

    move v2, v10

    move-object/from16 v3, p3

    move-object v4, v11

    move-object v5, v12

    move-object v7, v0

    invoke-virtual/range {v1 .. v9}, Lcom/viber/voip/contacts/c/e/b;->a(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/viber/voip/util/fh;ZZ)V

    .line 166
    return-void
.end method

.method public a(Lcom/viber/voip/contacts/c/d/aq;)V
    .locals 11
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 454
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/aa;->c:Lcom/viber/voip/contacts/c/e/b;

    const/16 v1, 0x630

    sget-object v3, Lcom/viber/provider/contacts/g;->a:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "canonized_number"

    aput-object v5, v4, v9

    const/4 v5, 0x1

    const-string/jumbo v6, "photo"

    aput-object v6, v4, v5

    const-string/jumbo v5, "photo<>actual_photo"

    new-instance v8, Lcom/viber/voip/contacts/c/d/ae;

    invoke-direct {v8, p0, p1}, Lcom/viber/voip/contacts/c/d/ae;-><init>(Lcom/viber/voip/contacts/c/d/aa;Lcom/viber/voip/contacts/c/d/aq;)V

    move-object v6, v2

    move-object v7, v2

    move v10, v9

    invoke-virtual/range {v0 .. v10}, Lcom/viber/voip/contacts/c/e/b;->a(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/fl;ZZ)V

    .line 473
    return-void
.end method

.method public a(Lcom/viber/voip/contacts/c/d/ar;)V
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 566
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/aa;->c:Lcom/viber/voip/contacts/c/e/b;

    sget-object v3, Lcom/viber/provider/contacts/d;->a:Landroid/net/Uri;

    new-array v4, v11, [Ljava/lang/String;

    const-string/jumbo v5, "phone_label"

    aput-object v5, v4, v1

    new-instance v8, Lcom/viber/voip/contacts/c/d/ai;

    invoke-direct {v8, p0, p1}, Lcom/viber/voip/contacts/c/d/ai;-><init>(Lcom/viber/voip/contacts/c/d/aa;Lcom/viber/voip/contacts/c/d/ar;)V

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move v9, v1

    move v10, v1

    invoke-virtual/range {v0 .. v11}, Lcom/viber/voip/contacts/c/e/b;->a(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/fl;ZZZ)V

    .line 585
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/viber/voip/contacts/c/d/i;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 196
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 198
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p2, p1, v0}, Lcom/viber/voip/contacts/c/d/i;->a(Ljava/lang/String;Ljava/util/Set;)V

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/aa;->d:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/aa;->c:Lcom/viber/voip/contacts/c/e/b;

    new-instance v2, Lcom/viber/voip/contacts/c/d/ak;

    invoke-direct {v2, p0, p2, p1}, Lcom/viber/voip/contacts/c/d/ak;-><init>(Lcom/viber/voip/contacts/c/d/aa;Lcom/viber/voip/contacts/c/d/i;Ljava/lang/String;)V

    const-string/jumbo v4, "phonebookcontact._id IN (SELECT phonebookdata.contact_id FROM phonebookdata WHERE phonebookdata.mime_type=0 AND (phonebookdata.data1=? OR phonebookdata.data2=?))"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object v6, v5, v3

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->fillCursor(Lcom/viber/voip/util/fe;Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;ILjava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/contacts/c/d/as;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 512
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 513
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 514
    if-eqz p3, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3, v0}, Lcom/viber/voip/contacts/c/d/as;->a(Ljava/util/Collection;)V

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/aa;->g:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/aa;->c:Lcom/viber/voip/contacts/c/e/b;

    new-instance v2, Lcom/viber/voip/contacts/c/d/ah;

    invoke-direct {v2, p0, p2, p3}, Lcom/viber/voip/contacts/c/d/ah;-><init>(Lcom/viber/voip/contacts/c/d/aa;Ljava/lang/String;Lcom/viber/voip/contacts/c/d/as;)V

    const-string/jumbo v3, "phonebookcontact.low_display_name ASC, phonebookcontact._id DESC"

    const-string/jumbo v5, "phonebookcontact._id IN (SELECT phonebookdata.contact_id FROM phonebookdata WHERE phonebookdata.mime_type=0 AND (phonebookdata.data1=? OR phonebookdata.data2=?))"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    aput-object v7, v6, v4

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->fillCursor(Lcom/viber/voip/util/fe;Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/util/Set;Lcom/viber/voip/contacts/c/d/ap;)V
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/viber/voip/contacts/c/d/ap;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 422
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 423
    const-string/jumbo v0, "actual_photo"

    const-string/jumbo v1, ""

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/aa;->c:Lcom/viber/voip/contacts/c/e/b;

    const/16 v1, 0x630

    sget-object v3, Lcom/viber/provider/contacts/g;->a:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "canonized_number IN ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/viber/voip/i/a;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/viber/voip/contacts/c/d/ac;

    invoke-direct {v7, p0, p2}, Lcom/viber/voip/contacts/c/d/ac;-><init>(Lcom/viber/voip/contacts/c/d/aa;Lcom/viber/voip/contacts/c/d/ap;)V

    move-object v6, v2

    move v9, v8

    invoke-virtual/range {v0 .. v9}, Lcom/viber/voip/contacts/c/e/b;->a(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Lcom/viber/voip/util/fn;ZZ)V

    .line 434
    return-void
.end method

.method public a(Ljava/util/Set;Lcom/viber/voip/contacts/c/d/j;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/viber/voip/contacts/c/d/j;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 286
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 287
    :cond_0
    if-eqz p2, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p2, v0, v1}, Lcom/viber/voip/contacts/c/d/j;->a(Ljava/util/Map;Ljava/util/Map;)V

    .line 320
    :cond_1
    :goto_0
    return-void

    .line 291
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/aa;->e:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/aa;->c:Lcom/viber/voip/contacts/c/e/b;

    new-instance v2, Lcom/viber/voip/contacts/c/d/an;

    invoke-direct {v2, p0, p2}, Lcom/viber/voip/contacts/c/d/an;-><init>(Lcom/viber/voip/contacts/c/d/aa;Lcom/viber/voip/contacts/c/d/j;)V

    const-string/jumbo v4, "phonebookcontact._id IN (SELECT phonebookdata.contact_id FROM phonebookdata WHERE phonebookdata.mime_type=0 AND (phonebookdata.data2 IN (%s)))"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/viber/voip/i/a;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->fillCursor(Lcom/viber/voip/util/fe;Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;ILjava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/util/Set;Lcom/viber/voip/contacts/c/d/k;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/viber/voip/contacts/c/d/k;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 244
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/aa;->f:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/aa;->c:Lcom/viber/voip/contacts/c/e/b;

    new-instance v2, Lcom/viber/voip/contacts/c/d/al;

    invoke-direct {v2, p0, p2}, Lcom/viber/voip/contacts/c/d/al;-><init>(Lcom/viber/voip/contacts/c/d/aa;Lcom/viber/voip/contacts/c/d/k;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "canonized_number IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/viber/voip/i/a;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->fillCursor(Lcom/viber/voip/util/fe;Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;ILjava/lang/String;[Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/util/Set;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/contacts/b/b;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 222
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 224
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 226
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 239
    :goto_0
    return-object v0

    .line 230
    :cond_0
    new-instance v3, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    sget-object v4, Lcom/viber/voip/contacts/b/b/e;->b:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    invoke-direct {v3, v4}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;-><init>(Lcom/viber/voip/messages/orm/creator/Creator;)V

    .line 231
    const/4 v4, 0x0

    const-string/jumbo v5, "phonebookcontact._id IN (SELECT phonebookdata.contact_id FROM phonebookdata WHERE phonebookdata.mime_type=0 AND (phonebookdata.data1=? OR phonebookdata.data2=?))"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    aput-object v1, v6, v0

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->fillCursorSync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    move v1, v0

    .line 233
    :goto_1
    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 234
    invoke-virtual {v3, v1}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->getEntity(I)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b/e;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 233
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 236
    :cond_1
    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->closeCursor()Z

    move-object v0, v2

    .line 239
    goto :goto_0
.end method

.method public b(Ljava/util/Set;Lcom/viber/voip/contacts/c/d/ap;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/viber/voip/contacts/c/d/ap;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 437
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 438
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 439
    sget-object v2, Lcom/viber/provider/contacts/g;->a:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "photo=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "actual_photo"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/aa;->c:Lcom/viber/voip/contacts/c/e/b;

    const/16 v1, 0x630

    const-string/jumbo v2, "com.viber.provider.vibercontacts"

    const/4 v3, 0x0

    new-instance v5, Lcom/viber/voip/contacts/c/d/ad;

    invoke-direct {v5, p0, p2}, Lcom/viber/voip/contacts/c/d/ad;-><init>(Lcom/viber/voip/contacts/c/d/aa;Lcom/viber/voip/contacts/c/d/ap;)V

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/viber/voip/contacts/c/e/b;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/util/List;Lcom/viber/voip/util/ff;ZZ)V

    .line 451
    return-void
.end method

.method public c(Ljava/lang/String;)Lcom/viber/voip/contacts/c/d/l;
    .locals 7
    .parameter

    .prologue
    .line 360
    if-nez p1, :cond_0

    sget-object v0, Lcom/viber/voip/contacts/c/d/l;->c:Lcom/viber/voip/contacts/c/d/l;

    .line 383
    :goto_0
    return-object v0

    .line 362
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 363
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 365
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/viber/voip/contacts/c/d/l;->c:Lcom/viber/voip/contacts/c/d/l;

    goto :goto_0

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/aa;->b:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/contacts/b/b/k;->a:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/creator/CreatorHelper;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/contacts/b/b/k;->a:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    invoke-virtual {v2}, Lcom/viber/voip/messages/orm/creator/CreatorHelper;->getProjections()[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "phonebookdata.mime_type=0 AND (phonebookdata.data1=? OR phonebookdata.data2=?)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 370
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 371
    sget-object v0, Lcom/viber/voip/contacts/b/b/k;->a:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/creator/CreatorHelper;->createInstance(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/f;

    .line 372
    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 373
    invoke-interface {v0}, Lcom/viber/voip/contacts/b/f;->f()Lcom/viber/voip/contacts/b/i;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 375
    sget-object v0, Lcom/viber/voip/contacts/c/d/l;->a:Lcom/viber/voip/contacts/c/d/l;

    goto :goto_0

    .line 378
    :cond_2
    sget-object v0, Lcom/viber/voip/contacts/c/d/l;->b:Lcom/viber/voip/contacts/c/d/l;

    goto :goto_0

    .line 381
    :cond_3
    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 383
    sget-object v0, Lcom/viber/voip/contacts/c/d/l;->c:Lcom/viber/voip/contacts/c/d/l;

    goto :goto_0
.end method
